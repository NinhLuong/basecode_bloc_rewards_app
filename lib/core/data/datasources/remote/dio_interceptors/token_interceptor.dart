import 'package:dio/dio.dart';
import 'package:magic_rewards/config/env/app_env_config.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/config/errors/exception.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Token interceptor that handles authentication token injection and refresh
/// This interceptor automatically adds auth tokens to requests and handles token refresh on expiry
class TokenInterceptor extends QueuedInterceptorsWrapper {
  final Dio _dio;
  final CacheStorageServices _cacheService;
  
  // Configuration constants
  static const String _authHeaderKey = 'Authorization';
  static const String _bearer = 'Bearer';
  static const String _refreshTokenUrlPath = '/auth/refresh-token';
  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  
  // State management
  bool _isRefreshing = false;
  final List<RequestOptions> _pendingRequests = [];

  TokenInterceptor(
    this._dio, {
    CacheStorageServices? cacheService,
  }) : _cacheService = cacheService ?? CacheStorageServices();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      LoggerService.auth('TokenInterceptor: Processing request to ${options.path}');

      // Skip token addition for auth endpoints to avoid circular calls
      if (_isAuthEndpoint(options.path)) {
        LoggerService.auth('TokenInterceptor: Skipping token for auth endpoint');
        handler.next(options);
        return;
      }

      // Add token if available
      final localToken = _cacheService.token;
      if (localToken.isNotEmpty && localToken != 'no token') {
        options.headers[_authHeaderKey] = '$_bearer $localToken';
        LoggerService.auth('TokenInterceptor: Token added to request headers');
      } else {
        LoggerService.warning('TokenInterceptor: No valid token available for request');
      }

      handler.next(options);
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error processing request', e);
      handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      LoggerService.auth('TokenInterceptor: Handling error for ${err.requestOptions.path}');

      // Check if error is due to unauthorized access (401)
      if (err.response?.statusCode == 401) {
        LoggerService.auth('TokenInterceptor: 401 Unauthorized - attempting token refresh');
        
        // Try to refresh token and retry request
        final refreshResult = await _handleTokenRefresh(err.requestOptions);
        
        if (refreshResult) {
          LoggerService.auth('TokenInterceptor: Token refreshed successfully, retrying request');
          try {
            final retryResponse = await _retryRequest(err.requestOptions);
            handler.resolve(retryResponse);
            return;
          } catch (retryError) {
            LoggerService.error('TokenInterceptor: Retry request failed', retryError);
            if (retryError is DioException) {
              handler.reject(retryError);
            } else {
              handler.reject(err);
            }
            return;
          }
        } else {
          LoggerService.auth('TokenInterceptor: Token refresh failed - user needs to re-authenticate');
          
          // Clear stored credentials and throw session expired exception
          await _clearAuthenticationData();
          
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: SessionExpiredException(message: 'Authentication failed. Please log in again.'),
              type: err.type,
              response: err.response,
              message: 'Session expired',
            ),
          );
          return;
        }
      }

      // For non-401 errors, pass through
      LoggerService.auth('TokenInterceptor: Non-401 error, passing through');
      handler.next(err);
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error in error handler', e);
      handler.next(err);
    }
  }

  /// Handle token refresh logic
  Future<bool> _handleTokenRefresh(RequestOptions failedRequest) async {
    try {
      // If already refreshing, queue the request
      if (_isRefreshing) {
        LoggerService.auth('TokenInterceptor: Token refresh already in progress, queueing request');
        _pendingRequests.add(failedRequest);
        return false;
      }

      _isRefreshing = true;
      LoggerService.auth('TokenInterceptor: Starting token refresh process');

      // Get refresh token from cache
      final refreshToken = await _getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        LoggerService.warning('TokenInterceptor: No refresh token available');
        _isRefreshing = false;
        return false;
      }

      // Attempt to refresh the token
      final newTokens = await _refreshTokens(refreshToken);
      if (newTokens != null) {
        // Save new tokens
        await _saveTokens(newTokens);
        
        // Process any pending requests
        await _processPendingRequests();
        
        LoggerService.auth('TokenInterceptor: Token refresh completed successfully');
        _isRefreshing = false;
        return true;
      }

      LoggerService.warning('TokenInterceptor: Token refresh failed');
      _isRefreshing = false;
      return false;
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error during token refresh', e);
      _isRefreshing = false;
      return false;
    }
  }

  /// Get refresh token from secure storage
  Future<String?> _getRefreshToken() async {
    try {
      // TODO: Implement secure refresh token storage
      // For now, assume refresh token is stored with a specific key
      // In production, use flutter_secure_storage or similar
      return _cacheService.token; // Placeholder - implement proper refresh token storage
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error getting refresh token', e);
      return null;
    }
  }

  /// Call refresh token API
  Future<Map<String, String>?> _refreshTokens(String refreshToken) async {
    try {
      LoggerService.auth('TokenInterceptor: Calling refresh token API');

      final refreshTokenUrl = '${AppEnvConfig.apiBaseUrl}$_refreshTokenUrlPath';
      final response = await _dio.post(
        refreshTokenUrl,
        data: {_refreshTokenKey: refreshToken},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final data = response.data as Map<String, dynamic>;
        final newAccessToken = data[_accessTokenKey] as String?;
        final newRefreshToken = data[_refreshTokenKey] as String?;

        if (newAccessToken != null) {
          LoggerService.auth('TokenInterceptor: New tokens received from server');
          return {
            _accessTokenKey: newAccessToken,
            if (newRefreshToken != null) _refreshTokenKey: newRefreshToken,
          };
        }
      }

      LoggerService.warning('TokenInterceptor: Invalid response from refresh token API');
      return null;
    } catch (e) {
      LoggerService.error('TokenInterceptor: Refresh token API call failed', e);
      return null;
    }
  }

  /// Save new tokens to storage
  Future<void> _saveTokens(Map<String, String> tokens) async {
    try {
      final accessToken = tokens[_accessTokenKey];
      if (accessToken != null) {
        await _cacheService.setToken(accessToken);
        LoggerService.auth('TokenInterceptor: New access token saved');
      }

      // TODO: Save refresh token securely if provided
      final refreshToken = tokens[_refreshTokenKey];
      if (refreshToken != null) {
        // Implement secure refresh token storage
        LoggerService.auth('TokenInterceptor: New refresh token received');
      }
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error saving tokens', e);
    }
  }

  /// Process any requests that were queued during token refresh
  Future<void> _processPendingRequests() async {
    try {
      LoggerService.auth('TokenInterceptor: Processing ${_pendingRequests.length} pending requests');

      for (final request in _pendingRequests) {
        try {
          // Add new token to pending request
          final newToken = _cacheService.token;
          if (newToken.isNotEmpty && newToken != 'no token') {
            request.headers[_authHeaderKey] = '$_bearer $newToken';
          }
        } catch (e) {
          LoggerService.error('TokenInterceptor: Error processing pending request', e);
        }
      }

      _pendingRequests.clear();
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error processing pending requests', e);
    }
  }

  /// Clear authentication data
  Future<void> _clearAuthenticationData() async {
    try {
      await _cacheService.clearAll();
      LoggerService.auth('TokenInterceptor: Authentication data cleared');
    } catch (e) {
      LoggerService.error('TokenInterceptor: Error clearing authentication data', e);
    }
  }

  /// Check if endpoint is an auth endpoint to avoid infinite loops
  bool _isAuthEndpoint(String path) {
    const authEndpoints = [
      '/auth/login',
      '/auth/register',
      '/auth/refresh-token',
      '/auth/logout',
      '/auth/forgot-password',
      '/auth/reset-password',
    ];

    return authEndpoints.any((endpoint) => path.contains(endpoint));
  }

  /// Retry the original request with new token
  Future<Response> _retryRequest(RequestOptions options) async {
    LoggerService.auth('TokenInterceptor: Retrying request to ${options.path}');
    
    // Update token in headers
    final newToken = _cacheService.token;
    if (newToken.isNotEmpty && newToken != 'no token') {
      options.headers[_authHeaderKey] = '$_bearer $newToken';
    }

    return recallOriginalApi(options);
  }

  Future<Response> recallOriginalApi(RequestOptions options) {
    return _dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      cancelToken: options.cancelToken,
      options: Options(
        method: options.method,
        sendTimeout: options.sendTimeout,
        extra: options.extra,
        headers: options.headers,
        responseType: options.responseType,
        contentType: options.contentType,
        receiveDataWhenStatusError: options.receiveDataWhenStatusError,
        followRedirects: options.followRedirects,
        maxRedirects: options.maxRedirects,
        requestEncoder: options.requestEncoder,
        responseDecoder: options.responseDecoder,
        listFormat: options.listFormat,
      ),
      onReceiveProgress: options.onReceiveProgress,
    );
  }
}