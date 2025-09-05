import 'package:dio/dio.dart';
import 'package:magic_rewards/config/errors/exception.dart';
import 'package:magic_rewards/core/data/models/error_message_model.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Error interceptor that transforms DioExceptions into custom app exceptions
/// This interceptor provides centralized error handling for all API requests
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.error('ErrorInterceptor: Handling DioException - ${err.type}', err);

    try {
      // Handle different types of DioExceptions
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          LoggerService.warning('ErrorInterceptor: Connection timeout occurred');
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: NoInternetException(),
              type: err.type,
              message: 'Connection timeout. Please check your internet connection.',
            ),
          );
          break;

        case DioExceptionType.connectionError:
          LoggerService.warning('ErrorInterceptor: Connection error occurred');
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: NoInternetException(),
              type: err.type,
              message: 'No internet connection. Please check your network settings.',
            ),
          );
          break;

        case DioExceptionType.badResponse:
          _handleBadResponse(err, handler);
          break;

        case DioExceptionType.cancel:
          LoggerService.info('ErrorInterceptor: Request cancelled');
          handler.reject(err);
          break;

        case DioExceptionType.unknown:
        default:
          LoggerService.error('ErrorInterceptor: Unknown error occurred');
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: UnknownException(message: err.message ?? 'An unknown error occurred'),
              type: err.type,
              message: 'An unexpected error occurred. Please try again.',
            ),
          );
          break;
      }
    } catch (e) {
      LoggerService.error('ErrorInterceptor: Error in error handling', e);
      handler.reject(err);
    }
  }

  /// Handle bad response errors with status codes
  void _handleBadResponse(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    final statusCode = response?.statusCode ?? 0;

    LoggerService.warning('ErrorInterceptor: Bad response - Status: $statusCode');

    // Handle specific status codes
    switch (statusCode) {
      case 401:
        _handleUnauthorized(err, handler);
        break;
      case 403:
        _handleForbidden(err, handler);
        break;
      case 404:
        _handleNotFound(err, handler);
        break;
      case 422:
        _handleValidationError(err, handler);
        break;
      case 426:
        _handleForceUpdate(err, handler);
        break;
      case 503:
        _handleMaintenanceMode(err, handler);
        break;
      case 500:
      case 502:
      case 504:
        _handleServerError(err, handler);
        break;
      default:
        _handleGenericBadResponse(err, handler);
        break;
    }
  }

  /// Handle 401 Unauthorized responses
  void _handleUnauthorized(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.auth('ErrorInterceptor: Unauthorized access - Session may be expired');
    
    // Check if response contains specific error code for session expiry
    final responseData = err.response?.data;
    if (responseData is Map<String, dynamic>) {
      final errorCode = responseData['error_code'];
      if (errorCode == 101) {
        LoggerService.auth('ErrorInterceptor: Session expired (error code 101)');
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: SessionExpiredException(),
            type: err.type,
            response: err.response,
            message: 'Your session has expired. Please log in again.',
          ),
        );
        return;
      }
    }

    // Generic unauthorized error
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'Unauthorized access. Please check your credentials.',
      ),
    );
  }

  /// Handle 403 Forbidden responses
  void _handleForbidden(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.warning('ErrorInterceptor: Forbidden access');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'Access forbidden. You do not have permission to access this resource.',
      ),
    );
  }

  /// Handle 404 Not Found responses
  void _handleNotFound(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.warning('ErrorInterceptor: Resource not found');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'The requested resource was not found.',
      ),
    );
  }

  /// Handle 422 Validation Error responses
  void _handleValidationError(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.warning('ErrorInterceptor: Validation error');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'Validation failed. Please check your input data.',
      ),
    );
  }

  /// Handle 426 Force Update responses
  void _handleForceUpdate(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.warning('ErrorInterceptor: Force update required');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ForceUpdateException(),
        type: err.type,
        response: err.response,
        message: 'App update required. Please update to the latest version.',
      ),
    );
  }

  /// Handle 503 Service Unavailable (Maintenance Mode) responses
  void _handleMaintenanceMode(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.warning('ErrorInterceptor: App under maintenance');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: AppUnderMaintenanceException(),
        type: err.type,
        response: err.response,
        message: 'The app is currently under maintenance. Please try again later.',
      ),
    );
  }

  /// Handle 500, 502, 504 Server Error responses
  void _handleServerError(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.error('ErrorInterceptor: Server error - Status: ${err.response?.statusCode}');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'Server error occurred. Please try again later.',
      ),
    );
  }

  /// Handle generic bad response errors
  void _handleGenericBadResponse(DioException err, ErrorInterceptorHandler handler) {
    LoggerService.error('ErrorInterceptor: Generic bad response - Status: ${err.response?.statusCode}');
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        error: ServerException(_createErrorModel(err)),
        type: err.type,
        response: err.response,
        message: 'An error occurred while processing your request.',
      ),
    );
  }

  /// Create error model from DioException response
  ErrorMessageModel _createErrorModel(DioException err) {
    try {
      if (err.response?.data != null) {
        return ErrorMessageModel.fromJson(err.response!);
      }
    } catch (e) {
      LoggerService.error('ErrorInterceptor: Failed to create error model from response', e);
    }

    // Fallback error model
    return ErrorMessageModel(
      statusCode: err.response?.statusCode ?? 0,
      statusMessage: err.message ?? 'An error occurred',
    );
  }
}
