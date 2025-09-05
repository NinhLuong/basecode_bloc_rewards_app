import 'package:dio/dio.dart';
import 'package:magic_rewards/config/errors/exception.dart';
import 'package:magic_rewards/core/data/models/error_message_model.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Error interceptor that transforms DioExceptions into custom app exceptions
/// This interceptor provides centralized error handling for all API requests
class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final stackTrace = StackTrace.current;
    LoggerService.error(
      'ErrorInterceptor: Comprehensive DioException Analysis\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '🔥 EXCEPTION TYPE: ${err.type}\n'
      '🌐 REQUEST URL: ${err.requestOptions.uri}\n'
      '📋 REQUEST METHOD: ${err.requestOptions.method}\n'
      '📊 RESPONSE STATUS: ${err.response?.statusCode ?? 'N/A'}\n'
      '💬 ERROR MESSAGE: ${err.message ?? 'No message'}\n'
      '📄 RESPONSE DATA: ${err.response?.data ?? 'No data'}\n'
      '🏷️  REQUEST HEADERS: ${err.requestOptions.headers}\n'
      '📨 REQUEST DATA: ${err.requestOptions.data ?? 'No request data'}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      err,
      stackTrace,
    );

    try {
      // Handle different types of DioExceptions
      switch (err.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          LoggerService.error(
            'ErrorInterceptor: Connection timeout occurred\n'
            'Timeout Type: ${err.type}\n'
            'URL: ${err.requestOptions.uri}\n'
            'Method: ${err.requestOptions.method}',
            err,
            stackTrace,
          );
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
          LoggerService.error(
            'ErrorInterceptor: Connection error occurred\n'
            'URL: ${err.requestOptions.uri}\n'
            'Method: ${err.requestOptions.method}\n'
            'Error: ${err.error}',
            err,
            stackTrace,
          );
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
          _handleBadResponse(err, handler, stackTrace);
          break;

        case DioExceptionType.cancel:
          LoggerService.info('ErrorInterceptor: Request cancelled for ${err.requestOptions.uri}');
          handler.reject(err);
          break;

        case DioExceptionType.unknown:
        default:
          LoggerService.error(
            'ErrorInterceptor: Unknown error occurred\n'
            'URL: ${err.requestOptions.uri}\n'
            'Method: ${err.requestOptions.method}\n'
            'Error: ${err.error}\n'
            'Message: ${err.message}',
            err,
            stackTrace,
          );
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
    } catch (e, innerStackTrace) {
      LoggerService.error(
        'ErrorInterceptor: Critical error in error handling\n'
        'Original Exception: $err\n'
        'Inner Exception: $e',
        e,
        innerStackTrace,
      );
      handler.reject(err);
    }
  }

  /// Handle bad response errors with status codes
  void _handleBadResponse(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    final response = err.response;
    final statusCode = response?.statusCode ?? 0;

    LoggerService.error(
      'ErrorInterceptor: Bad Response Analysis\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '🔴 BAD RESPONSE DETECTED\n'
      '📊 Status Code: $statusCode\n'
      '🌐 URL: ${err.requestOptions.uri}\n'
      '📋 Method: ${err.requestOptions.method}\n'
      '📄 Response Data: ${response?.data}\n'
      '🏷️  Response Headers: ${response?.headers}\n'
      '💬 Error Message: ${err.message}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      err,
      stackTrace,
    );

    // Handle specific status codes
    switch (statusCode) {
      case 401:
        _handleUnauthorized(err, handler, stackTrace);
        break;
      case 403:
        _handleForbidden(err, handler, stackTrace);
        break;
      case 404:
        _handleNotFound(err, handler, stackTrace);
        break;
      case 422:
        _handleValidationError(err, handler, stackTrace);
        break;
      case 426:
        _handleForceUpdate(err, handler, stackTrace);
        break;
      case 503:
        _handleMaintenanceMode(err, handler, stackTrace);
        break;
      case 500:
      case 502:
      case 504:
        _handleServerError(err, handler, stackTrace);
        break;
      default:
        _handleGenericBadResponse(err, handler, stackTrace);
        break;
    }
  }

  /// Handle 401 Unauthorized responses
  void _handleUnauthorized(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Unauthorized Access Analysis\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '🔐 UNAUTHORIZED ACCESS (401)\n'
      '🌐 URL: ${err.requestOptions.uri}\n'
      '📋 Method: ${err.requestOptions.method}\n'
      '📄 Response Data: ${err.response?.data}\n'
      '🏷️  Request Headers: ${err.requestOptions.headers}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      err,
      stackTrace,
    );
    
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
  void _handleForbidden(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Forbidden Access (403)\n'
      'URL: ${err.requestOptions.uri}\n'
      'Response: ${err.response?.data}',
      err,
      stackTrace,
    );
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
  void _handleNotFound(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Resource Not Found (404)\n'
      'URL: ${err.requestOptions.uri}\n'
      'Method: ${err.requestOptions.method}',
      err,
      stackTrace,
    );
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
  void _handleValidationError(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Validation Error (422)\n'
      'URL: ${err.requestOptions.uri}\n'
      'Request Data: ${err.requestOptions.data}\n'
      'Response: ${err.response?.data}',
      err,
      stackTrace,
    );
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
  void _handleForceUpdate(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Force Update Required (426)\n'
      'URL: ${err.requestOptions.uri}',
      err,
      stackTrace,
    );
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
  void _handleMaintenanceMode(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: App Under Maintenance (503)\n'
      'URL: ${err.requestOptions.uri}',
      err,
      stackTrace,
    );
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
  void _handleServerError(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Server Error Analysis\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '🔥 SERVER ERROR (${err.response?.statusCode})\n'
      '🌐 URL: ${err.requestOptions.uri}\n'
      '📋 Method: ${err.requestOptions.method}\n'
      '📄 Response Data: ${err.response?.data}\n'
      '⏰ Timestamp: ${DateTime.now().toIso8601String()}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      err,
      stackTrace,
    );
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
  void _handleGenericBadResponse(DioException err, ErrorInterceptorHandler handler, StackTrace stackTrace) {
    LoggerService.error(
      'ErrorInterceptor: Generic Bad Response Analysis\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '❌ GENERIC BAD RESPONSE\n'
      '📊 Status Code: ${err.response?.statusCode}\n'
      '🌐 URL: ${err.requestOptions.uri}\n'
      '📋 Method: ${err.requestOptions.method}\n'
      '📄 Response Data: ${err.response?.data}\n'
      '🏷️  Response Headers: ${err.response?.headers}\n'
      '💬 Error Message: ${err.message}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      err,
      stackTrace,
    );
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
        LoggerService.debug(
          'ErrorInterceptor: Creating error model from response data\n'
          'Status Code: ${err.response?.statusCode}\n'
          'Response Data Type: ${err.response?.data.runtimeType}\n'
          'Response Data: ${err.response?.data}',
        );
        return ErrorMessageModel.fromJson(err.response!);
      }
    } catch (e, stackTrace) {
      LoggerService.error(
        'ErrorInterceptor: Failed to create error model from response\n'
        '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
        '⚠️  ERROR MODEL CREATION FAILED\n'
        '📊 Response Status: ${err.response?.statusCode}\n'
        '📄 Response Data: ${err.response?.data}\n'
        '🔥 Parsing Error: $e\n'
        '📍 Error Type: ${e.runtimeType}\n'
        '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
        e,
        stackTrace,
      );
    }

    // Fallback error model with enhanced information
    final fallbackModel = ErrorMessageModel(
      statusCode: err.response?.statusCode ?? 0,
      statusMessage: err.message ?? 'An error occurred',
    );
    
    LoggerService.debug(
      'ErrorInterceptor: Using fallback error model\n'
      'Status Code: ${fallbackModel.statusCode}\n'
      'Status Message: ${fallbackModel.statusMessage}',
    );
    
    return fallbackModel;
  }
}
