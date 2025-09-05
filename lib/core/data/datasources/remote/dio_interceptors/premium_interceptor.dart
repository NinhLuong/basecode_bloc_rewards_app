import 'package:dio/dio.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Premium interceptor that handles premium feature access validation
/// This interceptor checks for premium requirements and blocks access to premium features
class PremiumInterceptor extends Interceptor {
  final CacheStorageServices _cacheService;

  // Premium feature identifiers
  static const List<String> _premiumEndpoints = [
    '/premium/rewards',
    '/premium/tasks',
    '/premium/offers',
    '/premium/leaderboard',
    '/premium/analytics',
    '/premium/profile/advanced',
    '/premium/export',
    '/premium/support/priority',
  ];

  // Premium feature headers
  static const String _premiumRequiredHeader = 'X-Premium-Required';
  static const String _premiumStatusHeader = 'X-Premium-Status';
  static const String _upgradeUrlHeader = 'X-Premium-Upgrade-Url';
  static const String _premiumMessageHeader = 'X-Premium-Message';

  PremiumInterceptor({CacheStorageServices? cacheService})
      : _cacheService = cacheService ?? CacheStorageServices();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      LoggerService.info('PremiumInterceptor: Checking request to ${options.path}');

      // Check if the request is for a premium feature
      if (_isPremiumEndpoint(options.path)) {
        LoggerService.info('PremiumInterceptor: Premium endpoint detected');

        // Validate premium access
        final hasAccess = await _validatePremiumAccess();
        
        if (!hasAccess) {
          LoggerService.warning('PremiumInterceptor: Premium access denied for ${options.path}');
          
          handler.reject(
            DioException(
              requestOptions: options,
              error: PremiumRequiredException(
                message: 'Premium subscription required to access this feature.',
                featureName: _getFeatureName(options.path),
              ),
              type: DioExceptionType.cancel,
              message: 'Premium access required',
            ),
          );
          return;
        }
      }

      // Add premium status to request headers for server-side validation
      await _addPremiumHeaders(options);

      LoggerService.info('PremiumInterceptor: Request approved');
      handler.next(options);
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error processing request', e);
      handler.next(options);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    try {
      LoggerService.info('PremiumInterceptor: Processing response for ${response.requestOptions.path}');

      // Check response headers for premium requirements
      final headers = response.headers;
      
      if (_checkPremiumRequiredHeader(headers)) {
        LoggerService.warning('PremiumInterceptor: Server indicates premium required');
        
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            error: PremiumRequiredException(
              message: _getPremiumMessage(headers) ?? 
                      'Premium subscription required to access this feature.',
              upgradeUrl: _getUpgradeUrl(headers),
              featureName: _getFeatureName(response.requestOptions.path),
            ),
            type: DioExceptionType.badResponse,
            response: response,
            message: 'Premium required',
          ),
        );
        return;
      }

      // Check response body for premium-related messages
      if (_checkResponseBodyForPremium(response)) {
        LoggerService.warning('PremiumInterceptor: Premium requirement found in response body');
        
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            error: PremiumRequiredException(
              message: 'Premium subscription required to access this feature.',
              featureName: _getFeatureName(response.requestOptions.path),
            ),
            type: DioExceptionType.badResponse,
            response: response,
            message: 'Premium required',
          ),
        );
        return;
      }

      // Update premium status if provided in response
      await _updatePremiumStatus(response);

      LoggerService.info('PremiumInterceptor: Response processed successfully');
      handler.next(response);
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error processing response', e);
      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    try {
      LoggerService.info('PremiumInterceptor: Processing error for ${err.requestOptions.path}');

      // Check if error is related to premium access
      if (err.response?.statusCode == 402) { // Payment Required
        LoggerService.warning('PremiumInterceptor: Payment required error (HTTP 402)');
        
        handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: PremiumRequiredException(
              message: 'Premium subscription required to access this feature.',
              upgradeUrl: _getUpgradeUrl(err.response?.headers),
              featureName: _getFeatureName(err.requestOptions.path),
            ),
            type: err.type,
            response: err.response,
            message: 'Premium required',
          ),
        );
        return;
      }

      // Check error response for premium requirements
      if (err.response != null) {
        if (_checkPremiumRequiredHeader(err.response!.headers) ||
            _checkResponseBodyForPremium(err.response!)) {
          LoggerService.warning('PremiumInterceptor: Premium requirement in error response');
          
          handler.reject(
            DioException(
              requestOptions: err.requestOptions,
              error: PremiumRequiredException(
                message: 'Premium subscription required to access this feature.',
                featureName: _getFeatureName(err.requestOptions.path),
              ),
              type: err.type,
              response: err.response,
              message: 'Premium required',
            ),
          );
          return;
        }
      }

      // Pass through non-premium related errors
      LoggerService.info('PremiumInterceptor: Non-premium error, passing through');
      handler.next(err);
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error in error handler', e);
      handler.next(err);
    }
  }

  /// Check if endpoint requires premium access
  bool _isPremiumEndpoint(String path) {
    return _premiumEndpoints.any((endpoint) => path.contains(endpoint));
  }

  /// Validate if user has premium access
  Future<bool> _validatePremiumAccess() async {
    try {
      // TODO: Implement actual premium validation logic
      // This could involve:
      // 1. Checking local premium status from cache
      // 2. Validating premium subscription with server
      // 3. Checking subscription expiry date
      // 4. Verifying payment status
      
      // Placeholder implementation - check if user has premium flag in cache
      // In a real app, this would be more sophisticated
      return await _hasPremiumSubscription();
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error validating premium access', e);
      return false;
    }
  }

  /// Check if user has premium subscription
  Future<bool> _hasPremiumSubscription() async {
    try {
      // TODO: Implement actual premium subscription check
      // This is a placeholder implementation
      
      // Check if user is authenticated first
      if (!_cacheService.hasToken) {
        return false;
      }

      // Example: Check for premium flag in user preferences
      // In production, this would involve checking:
      // - Subscription status from server
      // - Local subscription validation
      // - Subscription expiry date
      // - Payment verification
      
      return false; // Default to non-premium for safety
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error checking premium subscription', e);
      return false;
    }
  }

  /// Add premium-related headers to request
  Future<void> _addPremiumHeaders(RequestOptions options) async {
    try {
      final isPremium = await _hasPremiumSubscription();
      options.headers['X-User-Premium'] = isPremium.toString();
      
      // Add subscription info if available
      // TODO: Add actual subscription details
      if (isPremium) {
        options.headers['X-Premium-Type'] = 'standard'; // or 'premium', 'enterprise', etc.
        // options.headers['X-Subscription-Id'] = subscriptionId;
      }

      LoggerService.info('PremiumInterceptor: Premium headers added - Premium: $isPremium');
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error adding premium headers', e);
    }
  }

  /// Check response headers for premium requirements
  bool _checkPremiumRequiredHeader(Headers headers) {
    final premiumRequired = headers.value(_premiumRequiredHeader);
    return premiumRequired?.toLowerCase() == 'true' || 
           premiumRequired == '1' || 
           premiumRequired?.toLowerCase() == 'yes';
  }

  /// Check response body for premium requirements
  bool _checkResponseBodyForPremium(Response response) {
    try {
      final data = response.data;
      if (data is Map<String, dynamic>) {
        // Check for common premium indicators
        final premiumRequired = data['premium_required'] ?? 
                               data['premiumRequired'] ?? 
                               data['requires_premium'] ?? 
                               data['requiresPremium'];

        if (premiumRequired == true || premiumRequired == 1 || premiumRequired == '1') {
          return true;
        }

        // Check for subscription-related error messages
        final message = data['message']?.toString().toLowerCase() ?? '';
        final error = data['error']?.toString().toLowerCase() ?? '';
        
        return message.contains('premium') || 
               message.contains('subscription') || 
               error.contains('premium') || 
               error.contains('subscription');
      }
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error checking response body', e);
    }
    return false;
  }

  /// Get premium message from headers
  String? _getPremiumMessage(Headers headers) {
    return headers.value(_premiumMessageHeader);
  }

  /// Get upgrade URL from headers
  String? _getUpgradeUrl(Headers? headers) {
    return headers?.value(_upgradeUrlHeader);
  }

  /// Get feature name from endpoint path
  String _getFeatureName(String path) {
    // Extract feature name from path for better user experience
    if (path.contains('/premium/rewards')) return 'Premium Rewards';
    if (path.contains('/premium/tasks')) return 'Premium Tasks';
    if (path.contains('/premium/offers')) return 'Premium Offers';
    if (path.contains('/premium/leaderboard')) return 'Premium Leaderboard';
    if (path.contains('/premium/analytics')) return 'Analytics';
    if (path.contains('/premium/profile/advanced')) return 'Advanced Profile';
    if (path.contains('/premium/export')) return 'Data Export';
    if (path.contains('/premium/support/priority')) return 'Priority Support';
    
    return 'Premium Feature';
  }

  /// Update premium status from response
  Future<void> _updatePremiumStatus(Response response) async {
    try {
      final headers = response.headers;
      final premiumStatus = headers.value(_premiumStatusHeader);
      
      if (premiumStatus != null) {
        // TODO: Update local premium status cache
        LoggerService.info('PremiumInterceptor: Premium status updated: $premiumStatus');
      }

      // Check response body for subscription updates
      final data = response.data;
      if (data is Map<String, dynamic>) {
        final subscriptionInfo = data['subscription'] ?? data['premium'];
        if (subscriptionInfo != null) {
          // TODO: Update subscription information in local cache
          LoggerService.info('PremiumInterceptor: Subscription info updated');
        }
      }
    } catch (e) {
      LoggerService.error('PremiumInterceptor: Error updating premium status', e);
    }
  }
}

/// Exception thrown when premium access is required
class PremiumRequiredException implements Exception {
  final String message;
  final String? upgradeUrl;
  final String? featureName;

  const PremiumRequiredException({
    required this.message,
    this.upgradeUrl,
    this.featureName,
  });

  @override
  String toString() {
    return 'PremiumRequiredException: $message';
  }
}
