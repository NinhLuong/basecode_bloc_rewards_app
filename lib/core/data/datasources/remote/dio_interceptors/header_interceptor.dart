import 'package:dio/dio.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'dart:io' show Platform;
import 'dart:math' as math;

/// This class [ApiHeaders] identifier represents the headers that can be sent to the server side
/// this class should have all headers in your application
/// [baseHeaders] expresses the base headers used to interact with the server side
///
/// You can also define which headers could be used in the application

class ApiHeaders {
  static ApiHeaders? _instance;

  ApiHeaders._();

  factory ApiHeaders() => _instance ??= ApiHeaders._();

// TODO : customize your Header
  Map<String, String> get baseHeaders => {
        if (CacheStorageServices().hasToken)
          "Authorization": "Bearer ${CacheStorageServices().token}",
        "Content-Type": "multipart/form-data",
        //  "language": "en",
        // "app": "android",
        "version": "2.0.1",
      };
}

/// Header interceptor that automatically injects required headers to all requests
/// This interceptor ensures consistent header management across all API calls
class HeaderInterceptor extends Interceptor {
  final CacheStorageServices _cacheService;
  final ApiHeaders _apiHeaders;
  String? _cachedUserAgent;
  String? _cachedAppVersion;
  String? _cachedDeviceId;

  HeaderInterceptor({
    CacheStorageServices? cacheService,
    ApiHeaders? apiHeaders,
  })  : _cacheService = cacheService ?? CacheStorageServices(),
        _apiHeaders = apiHeaders ?? ApiHeaders();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      LoggerService.network('HeaderInterceptor: Adding headers to ${options.method} ${options.path}');

      // Get base headers from ApiHeaders
      final baseHeaders = _apiHeaders.baseHeaders;

      // Add base headers to request
      options.headers.addAll(baseHeaders);

      // Add dynamic headers
      await _addDynamicHeaders(options);

      // Add request-specific headers
      _addRequestSpecificHeaders(options);

      // Log headers for debugging (excluding sensitive data)
      _logHeaders(options.headers);

      LoggerService.network('HeaderInterceptor: Headers successfully added');
      handler.next(options);
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error adding headers', e);
      // Continue with request even if header addition fails
      handler.next(options);
    }
  }

  /// Add dynamic headers that may change based on app state or device info
  Future<void> _addDynamicHeaders(RequestOptions options) async {
    try {
      // Add user agent if not already present
      if (!options.headers.containsKey('User-Agent')) {
        options.headers['User-Agent'] = await _getUserAgent();
      }

      // Add device information
      options.headers['Device-Type'] = Platform.isIOS ? 'ios' : 'android';
      options.headers['Device-ID'] = await _getDeviceId();

      // Add app version
      options.headers['App-Version'] = await _getAppVersion();

      // Add language preference
      final locale = _cacheService.locale;
      if (locale != null && locale.isNotEmpty) {
        options.headers['Accept-Language'] = locale;
        options.headers['Language'] = locale;
      } else {
        options.headers['Accept-Language'] = 'en';
        options.headers['Language'] = 'en';
      }

      // Add timezone information
      final timeZone = DateTime.now().timeZoneName;
      options.headers['Timezone'] = timeZone;

      // Add timestamp for request tracking
      options.headers['Request-Time'] = DateTime.now().toIso8601String();

      // Add user context headers if user is authenticated
      if (_cacheService.hasToken) {
        options.headers['User-ID'] = _cacheService.accountId;
        options.headers['User-Name'] = _cacheService.username;
      }
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error adding dynamic headers', e);
    }
  }

  /// Add request-specific headers based on request type and content
  void _addRequestSpecificHeaders(RequestOptions options) {
    try {
      // Set appropriate content type based on request data
      if (options.data != null) {
        if (options.data is FormData) {
          // FormData requests should use multipart/form-data
          options.headers['Content-Type'] = 'multipart/form-data';
        } else if (options.data is Map || options.data is List) {
          // JSON requests
          options.headers['Content-Type'] = 'application/json';
        }
      }

      // Add accept header for expected response format
      if (!options.headers.containsKey('Accept')) {
        options.headers['Accept'] = 'application/json, text/plain, */*';
      }

      // Add cache control headers for GET requests
      if (options.method.toUpperCase() == 'GET') {
        options.headers['Cache-Control'] = 'no-cache, no-store, must-revalidate';
        options.headers['Pragma'] = 'no-cache';
      }

      // Add request ID for tracking
      options.headers['Request-ID'] = _generateRequestId();

      // Add connection keep-alive header
      options.headers['Connection'] = 'keep-alive';
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error adding request-specific headers', e);
    }
  }

  /// Generate user agent string
  Future<String> _getUserAgent() async {
    if (_cachedUserAgent != null) {
      return _cachedUserAgent!;
    }

    try {
      final platformName = Platform.isIOS ? 'iOS' : 'Android';
      final deviceDetails = '$platformName ${Platform.operatingSystemVersion}';
      
      _cachedUserAgent = 'MagicRewards/2.0.1 ($deviceDetails)';
      return _cachedUserAgent!;
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error generating user agent', e);
      return 'MagicRewards/2.0.1';
    }
  }

  /// Get app version
  Future<String> _getAppVersion() async {
    if (_cachedAppVersion != null) {
      return _cachedAppVersion!;
    }

    try {
      // Use hardcoded version for now, as package_info_plus may not be available
      _cachedAppVersion = '2.0.1';
      return _cachedAppVersion!;
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error getting app version', e);
      return '2.0.1';
    }
  }

  /// Get device ID
  Future<String> _getDeviceId() async {
    if (_cachedDeviceId != null) {
      return _cachedDeviceId!;
    }

    try {
      // Generate a simple device identifier based on platform and timestamp
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final random = math.Random(timestamp);
      final platformPrefix = Platform.isIOS ? 'ios' : 'android';
      
      _cachedDeviceId = '${platformPrefix}_${timestamp}_${random.nextInt(9999)}';
      return _cachedDeviceId!;
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error getting device ID', e);
      return 'unknown-device';
    }
  }

  /// Generate unique request ID
  String _generateRequestId() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = (timestamp * 1000 + (timestamp % 1000)).toString();
    return 'req_$random';
  }

  /// Log headers for debugging (excluding sensitive information)
  void _logHeaders(Map<String, dynamic> headers) {
    try {
      final sanitizedHeaders = <String, dynamic>{};
      
      headers.forEach((key, value) {
        // Hide sensitive headers for security
        if (_isSensitiveHeader(key)) {
          sanitizedHeaders[key] = '***HIDDEN***';
        } else {
          sanitizedHeaders[key] = value;
        }
      });

      LoggerService.network('HeaderInterceptor: Request headers: $sanitizedHeaders');
    } catch (e) {
      LoggerService.error('HeaderInterceptor: Error logging headers', e);
    }
  }

  /// Check if header contains sensitive information
  bool _isSensitiveHeader(String headerKey) {
    final sensitiveHeaders = [
      'authorization',
      'token',
      'x-api-key',
      'x-auth-token',
      'cookie',
      'set-cookie',
    ];

    return sensitiveHeaders.any((sensitive) => 
      headerKey.toLowerCase().contains(sensitive.toLowerCase()));
  }
}
