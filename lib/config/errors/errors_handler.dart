import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:bloc_rewards/core/domain/entities/base_entity.dart';
import 'package:bloc_rewards/core/data/models/base_model.dart';
import 'package:bloc_rewards/core/data/repositories/app_response.dart';
import 'package:bloc_rewards/shared/services/logger/logger_service.dart';

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
      L.network('Making API request...');
      
      /// call Future function and return [AppResponse]
      final response = await function();
      final AppResponse appResponse = AppResponse.fromDioResponse(response);
      
      L.network('API request completed with status: ${appResponse.statusCode}');
      
      if (appResponse.data?["error"] ?? false) {
        final errorCode = appResponse.data?['error_code'];
        L.warning('API returned error response - Error code: $errorCode');
        
        if (errorCode == 101) {
          L.auth('Session expired - throwing SessionExpiredException');
          throw SessionExpiredException();
        }
        
        L.error('Server error occurred', ServerException(ErrorMessageModel.fromJson(response)));
        throw ServerException(ErrorMessageModel.fromJson(response));
      }
      
      return appResponse;
    } on DioException catch (e) {
      L.error('DioException occurred: ${e.type}', e);
      
      // if back end return an error response and its json format
      if (e.response != null && e.response!.data is Map<String, dynamic>) {
        L.network('Server returned error response with data: ${e.response?.statusCode}');
        throw ServerException(ErrorMessageModel.fromJson(e.response!));
      }

      // any anther throws to any anther exception types showld be here
      // ...

      // un known Exception
      if (e.response != null) {
        L.error('Unknown DioException with response: ${e.response?.statusCode}', e);
        throw UnknownException(message: e.message);
      }

      // no internet Exception
      L.warning('No internet connection detected');
      throw NoInternetException();
    } catch (e, stackTrace) {
      L.detailedError(
        'Unexpected exception in API call',
        e,
        stackTrace,
        {
          'API URL': 'Check the specific API endpoint in logs above',
          'Request Method': 'Check the HTTP method in logs above',
          'Exception Location': 'API Service Layer',
        },
      );
      
      // in json parsing error
      if (e is TypeError) {
        L.parsingError(
          'JSON parsing error occurred during API response processing',
          e,
          stackTrace,
          'Check API response data in logs above',
          null, // We don't know the specific model type here
        );
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
      L.debug('Executing use case operation...');
      
      /// first call your [FutureFunction] function
      final result = await future();
      
      L.debug('Use case operation completed successfully');
      return Right(result.toEntity() as T);
    } catch (e, stackTrace) {
      /// then catch any errors + check types then return [Left] appropriate [Failure]
      L.detailedError(
        'Use case operation failed with comprehensive analysis',
        e,
        stackTrace,
        {
          'Entity Type (T)': '$T',
          'Model Type (M)': '$M',
          'Operation': 'Use Case Execution',
          'Layer': 'Domain Layer',
        },
      );
      
      final failure = failureThrower(e, stackTrace);
      L.warning('Converted exception to failure: ${failure.runtimeType} - ${failure.message}');
      
      return Left(failure);
    }
  }

  static Failure failureThrower(Object e, [StackTrace? stackTrace]) {
    L.debug('Converting exception to failure: ${e.runtimeType}');
    
    if (e is ServerException) {
      L.error(
        'Server exception details:\n'
        'Status Code: ${e.errorMessageModel.statusCode}\n'
        'Status Message: ${e.errorMessageModel.statusMessage}\n'
        'Exception: $e',
        e,
        stackTrace,
      );
      return ServerFailure(
        e.errorMessageModel.statusMessage,
        statusCode: e.errorMessageModel.statusCode,
      );
    }
    if (e is NoInternetException) {
      L.warning('No internet connection exception occurred');
      L.error('No Internet Exception Stack Trace', e, stackTrace);
      return NoInternetFailure();
    }
    if (e is UnknownException) {
      L.error(
        'Unknown exception occurred with details:\n'
        'Message: ${e.message}\n'
        'Exception: $e',
        e,
        stackTrace,
      );
      return UnknownFailure();
    }
    if (e is ForceUpdateException) {
      L.warning('Force update required: ${e.message}');
      L.error('Force Update Exception Stack Trace', e, stackTrace);
      return ForceUpdateFailure();
    }
    if (e is AppUnderMaintenanceException) {
      L.warning('App under maintenance: ${e.message}');
      L.error('App Under Maintenance Exception Stack Trace', e, stackTrace);
      return AppUnderMaintenanceFailure();
    }
    if (e is SessionExpiredException) {
      L.auth('Session expired exception: ${e.message}');
      L.error('Session Expired Exception Stack Trace', e, stackTrace);
      return SessionExpiredFailure();
    }
    if (e is ParsingException || e is TypeError) {
      final parsingMessage = e is ParsingException ? e.parsingMessage : e.toString();
      L.parsingError(
        'Parsing exception occurred during object conversion',
        e,
        stackTrace,
        'Data parsing failed - check JSON structure and model annotations',
        null, // Model type not available in this context
      );
      return ParsingFailure(parsingMessage: parsingMessage);
    }
    
    L.error(
      'Unhandled exception type with full context:\n'
      'Type: ${e.runtimeType}\n'
      'Exception: $e\n'
      'toString(): ${e.toString()}',
      e,
      stackTrace,
    );
    return Failure(e.toString());
  }
}
