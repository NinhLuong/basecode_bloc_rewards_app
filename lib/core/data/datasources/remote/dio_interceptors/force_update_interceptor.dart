import 'package:dio/dio.dart';
import 'package:magic_rewards/config/errors/exception.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Force Update interceptor that handles app version requirements
/// This interceptor checks for force update conditions in API responses
/// and prevents further API calls when an update is required
class ForceUpdateInterceptor extends Interceptor {
  static const String _forceUpdateHeader = 'X-Force-Update';
  static const String _minVersionHeader = 'X-Min-Version';
  // static const String _currentVersionHeader = 'X-Current-Version'; // For future use
  // static const String _updateUrlHeader = 'X-Update-Url';
  static const String _updateMessageHeader = 'X-Update-Message';

  String? _cachedAppVersion;
  bool _forceUpdateTriggered = false;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      // If force update was already triggered, block all new requests
      if (_forceUpdateTriggered) {
        LoggerService.warning('ForceUpdateInterceptor: Blocking request - Force update required');
        handler.reject(
          DioException(
            requestOptions: options,
            error: ForceUpdateException(message: 'App update required. Please update to continue.'),
            type: DioExceptionType.cancel,
            message: 'Request blocked due to required app update.',
          ),
        );
        return;
      }

      // Add current app version to request headers for server-side version checking
      final appVersion = await _getAppVersion();
      options.headers['App-Version'] = appVersion;

      LoggerService.network('ForceUpdateInterceptor: Added app version $appVersion to request');
      handler.next(options);
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error in request processing', e);
      handler.next(options);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      LoggerService.network('ForceUpdateInterceptor: Checking response for update requirements');

      // Check response headers for force update indicators
      final headers = response.headers;
      
      // Method 1: Check for explicit force update header
      if (_checkForceUpdateHeader(headers)) {
        await _handleForceUpdate(response, handler);
        return;
      }

      // Method 2: Check for minimum version requirement
      if (await _checkMinVersionRequirement(headers)) {
        await _handleForceUpdate(response, handler);
        return;
      }

      // Method 3: Check response body for update indicators
      if (_checkResponseBodyForUpdate(response)) {
        await _handleForceUpdate(response, handler);
        return;
      }

      // No update required, continue normally
      LoggerService.network('ForceUpdateInterceptor: No update required');
      handler.next(response);
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error processing response', e);
      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    try {
      // Check if the error response indicates a force update is needed
      if (err.response != null) {
        final statusCode = err.response!.statusCode;
        
        // HTTP 426 Upgrade Required - commonly used for force updates
        if (statusCode == 426) {
          LoggerService.warning('ForceUpdateInterceptor: Force update required (HTTP 426)');
          _forceUpdateTriggered = true;
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: ForceUpdateException(
                message: _getUpdateMessage(err.response!.headers) ?? 
                        'App update required. Please update to the latest version.',
              ),
              type: err.type,
              response: err.response,
              message: 'Force update required',
            ),
          );
          return;
        }

        // Check error response headers
        if (_checkForceUpdateHeader(err.response!.headers) ||
            _checkResponseBodyForUpdate(err.response!)) {
          _handleForceUpdate(err.response!, null, isError: true);
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: ForceUpdateException(
                message: 'App update required. Please update to continue.',
              ),
              type: err.type,
              response: err.response,
              message: 'Force update required',
            ),
          );
          return;
        }
      }

      // No force update required, pass through the error
      handler.next(err);
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error processing error response', e);
      handler.next(err);
    }
  }

  /// Check for explicit force update header
  bool _checkForceUpdateHeader(Headers headers) {
    final forceUpdate = headers.value(_forceUpdateHeader);
    if (forceUpdate != null) {
      final shouldUpdate = forceUpdate.toLowerCase() == 'true' || 
                          forceUpdate == '1' || 
                          forceUpdate.toLowerCase() == 'yes';
      
      if (shouldUpdate) {
        LoggerService.warning('ForceUpdateInterceptor: Force update header detected: $forceUpdate');
        return true;
      }
    }
    return false;
  }

  /// Check if current app version meets minimum version requirement
  Future<bool> _checkMinVersionRequirement(Headers headers) async {
    final minVersionHeader = headers.value(_minVersionHeader);
    if (minVersionHeader == null || minVersionHeader.isEmpty) {
      return false;
    }

    try {
      final currentVersion = await _getAppVersion();
      final isUpdateRequired = _compareVersions(currentVersion, minVersionHeader) < 0;

      if (isUpdateRequired) {
        LoggerService.warning(
          'ForceUpdateInterceptor: Current version $currentVersion is below minimum required $minVersionHeader'
        );
        return true;
      }
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error comparing versions', e);
    }

    return false;
  }

  /// Check response body for update indicators
  bool _checkResponseBodyForUpdate(Response response) {
    try {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        // Check for common force update indicators in response body
        final forceUpdate = data['force_update'] ?? 
                           data['forceUpdate'] ?? 
                           data['update_required'] ?? 
                           data['updateRequired'];

        if (forceUpdate == true || forceUpdate == 1 || forceUpdate == '1') {
          LoggerService.warning('ForceUpdateInterceptor: Force update indicator found in response body');
          return true;
        }

        // Check for version-specific indicators
        final appVersion = data['app_version'] ?? data['appVersion'];
        final minVersion = data['min_version'] ?? data['minVersion'];
        
        if (appVersion != null && minVersion != null) {
          try {
            if (_compareVersions(appVersion.toString(), minVersion.toString()) < 0) {
              LoggerService.warning(
                'ForceUpdateInterceptor: Version check failed - Current: $appVersion, Required: $minVersion'
              );
              return true;
            }
          } catch (e) {
            LoggerService.error('ForceUpdateInterceptor: Error comparing versions from response', e);
          }
        }
      }
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error checking response body', e);
    }

    return false;
  }

  /// Handle force update scenario
  Future<void> _handleForceUpdate(
    Response response, 
    ResponseInterceptorHandler? handler, {
    bool isError = false,
  }) async {
    LoggerService.warning('ForceUpdateInterceptor: Force update triggered');
    _forceUpdateTriggered = true;

    final updateMessage = _getUpdateMessage(response.headers) ?? 
                         'A new version of the app is available. Please update to continue.';
    // final updateUrl = _getUpdateUrl(response.headers); // Reserved for future use

    final forceUpdateException = ForceUpdateException(
      message: updateMessage,
    );

    if (handler != null && !isError) {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: forceUpdateException,
          type: DioExceptionType.badResponse,
          response: response,
          message: 'Force update required',
        ),
      );
    }

    // Additional handling could be added here, such as:
    // - Triggering a global event
    // - Storing update info for UI display
    // - Analytics tracking
  }

  /// Get update message from headers
  String? _getUpdateMessage(Headers headers) {
    return headers.value(_updateMessageHeader);
  }

  /// Get update URL from headers
  // String? _getUpdateUrl(Headers headers) {
  //   return headers.value(_updateUrlHeader);
  // }

  /// Get current app version
  Future<String> _getAppVersion() async {
    if (_cachedAppVersion != null) {
      return _cachedAppVersion!;
    }

    try {
      final packageInfo = await PackageInfo.fromPlatform();
      _cachedAppVersion = packageInfo.version;
      return _cachedAppVersion!;
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error getting app version', e);
      return '1.0.0';
    }
  }

  /// Compare two version strings
  /// Returns: -1 if version1 < version2, 0 if equal, 1 if version1 > version2
  int _compareVersions(String version1, String version2) {
    try {
      final v1Parts = version1.split('.').map((e) => int.tryParse(e) ?? 0).toList();
      final v2Parts = version2.split('.').map((e) => int.tryParse(e) ?? 0).toList();

      final maxLength = [v1Parts.length, v2Parts.length].reduce((a, b) => a > b ? a : b);

      // Pad shorter version with zeros
      while (v1Parts.length < maxLength) {
        v1Parts.add(0);
      }
      while (v2Parts.length < maxLength) {
        v2Parts.add(0);
      }

      for (int i = 0; i < maxLength; i++) {
        if (v1Parts[i] < v2Parts[i]) return -1;
        if (v1Parts[i] > v2Parts[i]) return 1;
      }

      return 0;
    } catch (e) {
      LoggerService.error('ForceUpdateInterceptor: Error comparing versions: $version1 vs $version2', e);
      return 0;
    }
  }

  /// Reset force update state (useful for testing or manual override)
  void resetForceUpdateState() {
    _forceUpdateTriggered = false;
    LoggerService.info('ForceUpdateInterceptor: Force update state reset');
  }

  /// Check if force update is currently triggered
  bool get isForceUpdateTriggered => _forceUpdateTriggered;
}
