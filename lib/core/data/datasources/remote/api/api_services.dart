import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/dio_log_interceptor.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/error_interceptor.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/header_interceptor.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/token_interceptor.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/force_update_interceptor.dart';
// import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/premium_interceptor.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';

/// This class [ApiServices] represents the basic services for call API services in the application,
/// so that all requests for Server Side services are through this same service.
///
/// methods:
///   1- [post] post http request
///   2- [get] get http request
///   3- [delete] delete http request
///   4- [put] put http request
///

@LazySingleton()
class ApiServices {
  late final Dio _dio;

  ApiServices() {
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));
    
    _setupInterceptors();
  }

  /// Setup all interceptors in the correct order
  /// Order matters: Request interceptors run in order, Response/Error interceptors run in reverse order
  void _setupInterceptors() {
    LoggerService.network('ApiServices: Setting up interceptors');
    
    _dio.interceptors.addAll([
      // 1. Header Interceptor - Add headers first (runs first for requests)
      HeaderInterceptor(),
      
      // 2. Token Interceptor - Handle authentication (runs after headers)
      TokenInterceptor(_dio),
      
      // 3. Premium Interceptor - Check premium access (runs after auth)
      // PremiumInterceptor(),
      
      // 4. Force Update Interceptor - Check app version requirements
      ForceUpdateInterceptor(),
      
      // 5. Logging Interceptor - Log requests/responses (should be near the end)
      CustomLogInterceptor(
        logPrint: (obj) => LoggerService.network(obj.toString()),
        requestBody: true,
        responseBody: true,
        error: true,
      ),
      
      // 6. Error Interceptor - Handle errors (runs last for requests, first for errors)
      ErrorInterceptor(),
    ]);
  }


  // on post request
  Future<AppResponse> post(
    String url, {
    Map<String, dynamic>? headers,
    Object? data,
  }) async {
    LoggerService.network('POST request to: $url');
    
    return ErrorsHandler.exceptionThrower(
      () => _dio.post(
        url,
        data: data == null ? null : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers), // Headers are handled by interceptors
      ),
    );
  }

  // on put request
  Future<AppResponse> put(
    String url, {
    Map<String, dynamic>? headers,
    Object? data,
  }) async {
    LoggerService.network('PUT request to: $url');
    
    return ErrorsHandler.exceptionThrower(
      () => _dio.put(
        url,
        data: data == null ? null : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers), // Headers are handled by interceptors
      ),
    );
  }

  // on delete request
  Future<AppResponse> delete(
    String url, {
    Map<String, dynamic>? headers,
    Object? data,
  }) async {
    LoggerService.network('DELETE request to: $url');
    
    return ErrorsHandler.exceptionThrower(
      () => _dio.delete(
        url,
        data: data == null ? null : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers), // Headers are handled by interceptors
      ),
    );
  }

  // on get request
  Future<AppResponse> get(
    String url, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    LoggerService.network('GET request to: $url');
    
    return ErrorsHandler.exceptionThrower(
      () => _dio.get(
        url,
        queryParameters: queryParameters,
        options: Options(headers: headers), // Headers are handled by interceptors
      ),
    );
  }

  /// Get direct access to Dio instance for advanced usage
  /// Use with caution as this bypasses the standardized request methods
  Dio get dioInstance => _dio;

  /// Add custom interceptor at runtime if needed
  void addInterceptor(Interceptor interceptor) {
    _dio.interceptors.add(interceptor);
    LoggerService.network('ApiServices: Custom interceptor added');
  }

  /// Remove all interceptors (useful for testing)
  void clearInterceptors() {
    _dio.interceptors.clear();
    LoggerService.network('ApiServices: All interceptors cleared');
  }

  /// Reset interceptors to default configuration
  void resetInterceptors() {
    clearInterceptors();
    _setupInterceptors();
    LoggerService.network('ApiServices: Interceptors reset to default configuration');
  }
}
