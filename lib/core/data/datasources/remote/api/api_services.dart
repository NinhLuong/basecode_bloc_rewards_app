import 'package:dio/dio.dart';
import 'package:magic_rewards/shared/services/logger_service.dart';

import 'api_headers.dart';
import '../../../errors/errors_handler.dart';
import '../../../repositories/app_response.dart';
import '../dio_interceptors/dio_log_interceptor.dart';

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
    _dio = Dio()..interceptors.add(CustomLogInterceptor(logPrint: (obj) => LoggerService.network(obj.toString())));
  }

  factory ApiServices() => _instance ??= ApiServices._();

  // on post request
  Future<AppResponse> post(
    String url, {
    Map<String, dynamic>? headers,
    Object? data,
  }) async {
    return ErrorsHandler.exceptionThrower(
      () => _dio.post(
        url,
        data: data == null
            ? null
            : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
      ),
    );
  }

  // on put request
  Future<AppResponse> put(String url,
      {Map<String, dynamic>? headers, Object? data}) async {
    return ErrorsHandler.exceptionThrower(
      () => _dio.put(
        url,
        data: data == null
            ? null
            : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
      ),
    );
  }

  // on delete request
  Future<AppResponse> delete(String url,
      {Map<String, dynamic>? headers, Object? data}) async {
    return ErrorsHandler.exceptionThrower(
      () => _dio.delete(
        url,
        data: data == null
            ? null
            : FormData.fromMap(data as Map<String, dynamic>),
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
      ),
    );
  }

  // on get request
  Future<AppResponse> get(String url,
      {Map<String, dynamic>? headers, Object? data}) async {
    return ErrorsHandler.exceptionThrower(
      () => _dio.get(
        url,
        options: Options(headers: headers ?? ApiHeaders().baseHeaders),
        data: data == null
            ? null
            : FormData.fromMap(data as Map<String, dynamic>),
      ),
    );
  }
}
