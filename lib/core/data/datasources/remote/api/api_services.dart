import 'package:dio/dio.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/core/data/datasources/remote/dio_interceptors/dio_log_interceptor.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/core/data/errors/errors_handler.dart';
import 'api_headers.dart';

/// This class [ApiServices] represents the basic services for call API services in the application,
/// so that all requests for Server Side services are through this same serivce.
///
/// methods:
///   1- [post] post http request
///   2- [get] get http request
///   3- [delete] delete http request
///   4- [put] put http request
///

class ApiServices {
  static ApiServices? _instance;
  late final Dio _dio;

  ApiServices._() {
    _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));
    
    _dio.interceptors.addAll([
      CustomLogInterceptor(
        logPrint: (obj) => LoggerService.network(obj.toString()),
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    ]);
  }

  factory ApiServices() => _instance ??= ApiServices._();

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
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
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
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
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
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
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
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
      ),
    );
  }
}
