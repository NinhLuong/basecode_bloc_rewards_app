import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

import '../../core/data/models/error_message_model.dart';
import 'exception.dart';
import 'failure.dart';

/// The method of type: [FutureFunction] expresses a waiting condition of type Generic
/// The method of type: [RequestFunction] expresses a waiting condition of type Dio [Response]
typedef FutureFunction<T> = Future<T> Function();
typedef RequestFunction<T> = Future<Response<T>> Function();

/// class [ErrorsHandler] defaine as Global Exception Handler,
/// [exceptionThrower] handles throw cases of exception according to the application's use cases,
/// [handleEither] handles possible errors and converting to either form.

class ErrorsHandler {
// this function to handle APIs exception this make you don't have to call any try catch in your code
  static Future<AppResponse> exceptionThrower(RequestFunction function) async {
    try {
      LoggerService.network('Making API request...');
      
      /// call Future function and return [AppResponse]
      final response = await function();
      final AppResponse appResponse = AppResponse.fromDioResponse(response);
      
      LoggerService.network('API request completed with status: ${appResponse.statusCode}');
      
      if (appResponse.data?["error"] ?? false) {
        final errorCode = appResponse.data?['error_code'];
        LoggerService.warning('API returned error response - Error code: $errorCode');
        
        if (errorCode == 101) {
          LoggerService.auth('Session expired - throwing SessionExpiredException');
          throw SessionExpiredException();
        }
        
        LoggerService.error('Server error occurred', ServerException(ErrorMessageModel.fromJson(response)));
        throw ServerException(ErrorMessageModel.fromJson(response));
      }
      
      return appResponse;
    } on DioException catch (e) {
      LoggerService.error('DioException occurred: ${e.type}', e);
      
      // if back end return an error response and its json format
      if (e.response != null && e.response!.data is Map<String, dynamic>) {
        LoggerService.network('Server returned error response with data: ${e.response?.statusCode}');
        throw ServerException(ErrorMessageModel.fromJson(e.response!));
      }

      // any anther throws to any anther exception types showld be here
      // ...

      // un known Exception
      if (e.response != null) {
        LoggerService.error('Unknown DioException with response: ${e.response?.statusCode}', e);
        throw UnknownException(message: e.message);
      }

      // no internet Exception
      LoggerService.warning('No internet connection detected');
      throw NoInternetException();
    } catch (e) {
      LoggerService.error('Unexpected exception in API call', e);
      
      // in json parsion error
      if (e is TypeError) {
        LoggerService.error('JSON parsing error occurred', e);
        throw ParsingException(parsingMessage: e.toString());
      }

      rethrow;
    }
  }

  // this function check possible exceptions and return either (left as Failure , right as Type you generic send)
  static Future<Either<Failure, T>>
      handleEither<T extends BaseEntity, M extends BaseModel>(
    FutureFunction<M> future,
  ) async {
    try {
      LoggerService.debug('Executing use case operation...');
      
      /// first call your [FutureFunction] function
      final result = await future();
      
      LoggerService.debug('Use case operation completed successfully');
      return Right(result.toEntity() as T);
    } catch (e) {
      /// then catch any errors + check types then return [Left] appropriate [Failure]
      LoggerService.error('Use case operation failed', e);
      
      final failure = failureThrower(e);
      LoggerService.warning('Converted exception to failure: ${failure.runtimeType} - ${failure.message}');
      
      return Left(failure);
    }
  }

  static Failure failureThrower(Object e) {
    LoggerService.debug('Converting exception to failure: ${e.runtimeType}');
    
    if (e is ServerException) {
      LoggerService.error('Server exception - Status: ${e.errorMessageModel.statusCode}, Message: ${e.errorMessageModel.statusMessage}');
      return ServerFailure(
        e.errorMessageModel.statusMessage,
        statusCode: e.errorMessageModel.statusCode,
      );
    }
    if (e is NoInternetException) {
      LoggerService.warning('No internet connection exception occurred');
      return NoInternetFailure();
    }
    if (e is UnknownException) {
      LoggerService.error('Unknown exception occurred: ${e.message}');
      return UnknownFailure();
    }
    if (e is ForceUpdateException) {
      LoggerService.warning('Force update required: ${e.message}');
      return ForceUpdateFailure();
    }
    if (e is AppUnderMaintenanceException) {
      LoggerService.warning('App under maintenance: ${e.message}');
      return AppUnderMaintenanceFailure();
    }
    if (e is SessionExpiredException) {
      LoggerService.auth('Session expired exception: ${e.message}');
      return SessionExpiredFailure();
    }
    if (e is ParsingException || e is TypeError) {
      final parsingMessage = e is ParsingException ? e.parsingMessage : e.toString();
      LoggerService.error('Parsing exception occurred: $parsingMessage');
      return ParsingFailure(parsingMessage: parsingMessage);
    }
    
    LoggerService.error('Unhandled exception type: ${e.runtimeType} - $e');
    return Failure(e.toString());
  }
}
