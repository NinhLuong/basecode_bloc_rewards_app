import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Helper class for route parameter validation
/// 
/// This class provides type-safe validation for route parameters
/// and handles errors gracefully to prevent navigation crashes
class RouteValidation {
  const RouteValidation._();

  /// Validates and casts extra data to the expected type
  /// 
  /// Returns null if validation fails, preventing crashes
  /// and allowing fallback navigation logic
  static T? validateExtra<T>(Object? extra, String routeName) {
    try {
      if (extra == null) {
        L.warning(
          'RouteValidation: No extra data provided for $routeName route'
        );
        return null;
      }

      if (extra is T) {
        L.debug(
          'RouteValidation: Successfully validated extra data for $routeName route'
        );
        return extra as T;
      }

      L.error(
        'RouteValidation: Invalid parameter type for $routeName route\n'
        'Expected: $T\n'
        'Received: ${extra.runtimeType}'
      );
      return null;
    } catch (e, stackTrace) {
      L.error(
        'RouteValidation: Error validating parameters for $routeName route',
        e,
        stackTrace,
      );
      return null;
    }
  }

  /// Validates extra data as a Map<String, dynamic>
  /// 
  /// Commonly used for passing multiple parameters to a route
  static Map<String, dynamic>? validateMapExtra(Object? extra, String routeName) {
    final result = validateExtra<Map<String, dynamic>>(extra, routeName);
    
    if (result != null) {
      L.debug(
        'RouteValidation: Map extra validated for $routeName with keys: ${result.keys.toList()}'
      );
    }
    
    return result;
  }

  /// Validates a required parameter from a map
  /// 
  /// Returns null if the key doesn't exist or the value is not of the expected type
  static T? validateMapParam<T>(
    Map<String, dynamic>? map, 
    String key, 
    String routeName
  ) {
    try {
      if (map == null) {
        L.warning(
          'RouteValidation: Map is null when validating $key for $routeName'
        );
        return null;
      }

      if (!map.containsKey(key)) {
        L.warning(
          'RouteValidation: Missing required parameter $key for $routeName route'
        );
        return null;
      }

      final value = map[key];
      if (value is T) {
        L.debug(
          'RouteValidation: Successfully validated parameter $key for $routeName route'
        );
        return value;
      }

      L.error(
        'RouteValidation: Invalid type for parameter $key in $routeName route\n'
        'Expected: $T\n'
        'Received: ${value.runtimeType}'
      );
      return null;
    } catch (e, stackTrace) {
      L.error(
        'RouteValidation: Error validating parameter $key for $routeName route',
        e,
        stackTrace,
      );
      return null;
    }
  }

  /// Validates query parameters from GoRouter state
  /// 
  /// Provides type-safe access to URL query parameters
  static String? validateQueryParam(
    Map<String, String> queryParams,
    String key,
    String routeName, {
    String? defaultValue,
  }) {
    try {
      final value = queryParams[key] ?? defaultValue;
      
      if (value != null) {
        L.debug(
          'RouteValidation: Query parameter $key found for $routeName: $value'
        );
      } else {
        L.debug(
          'RouteValidation: Query parameter $key not found for $routeName'
        );
      }
      
      return value;
    } catch (e, stackTrace) {
      L.error(
        'RouteValidation: Error validating query parameter $key for $routeName',
        e,
        stackTrace,
      );
      return defaultValue;
    }
  }

  /// Validates path parameters from GoRouter state
  /// 
  /// Provides type-safe access to URL path parameters
  static String? validatePathParam(
    Map<String, String> pathParams,
    String key,
    String routeName, {
    String? defaultValue,
  }) {
    try {
      final value = pathParams[key] ?? defaultValue;
      
      if (value != null) {
        L.debug(
          'RouteValidation: Path parameter $key found for $routeName: $value'
        );
      } else {
        L.debug(
          'RouteValidation: Path parameter $key not found for $routeName'
        );
      }
      
      return value;
    } catch (e, stackTrace) {
      L.error(
        'RouteValidation: Error validating path parameter $key for $routeName',
        e,
        stackTrace,
      );
      return defaultValue;
    }
  }

  /// Validates a list of required parameters
  /// 
  /// Returns true only if all required parameters are present and valid
  static bool validateRequiredParams(
    Map<String, dynamic> params,
    List<String> requiredKeys,
    String routeName,
  ) {
    try {
      for (final key in requiredKeys) {
        if (!params.containsKey(key) || params[key] == null) {
          L.error(
            'RouteValidation: Missing required parameter $key for $routeName route'
          );
          return false;
        }
      }

      L.debug(
        'RouteValidation: All required parameters validated for $routeName route'
      );
      return true;
    } catch (e, stackTrace) {
      L.error(
        'RouteValidation: Error validating required parameters for $routeName',
        e,
        stackTrace,
      );
      return false;
    }
  }
}
