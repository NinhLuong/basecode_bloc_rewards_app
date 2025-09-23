import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/enums/app_state.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Handles all routing guards and redirection logic using BLoC state
/// 
/// This class centralizes authentication checks, route protection,
/// and other navigation guards to keep the router configuration clean
class NavigationGuards {
  const NavigationGuards._();

  /// Main redirect handler for the application
  /// 
  /// This method handles all routing logic including:
  /// - Authentication state checks using AppConfigBloc
  /// - Route protection for authenticated/unauthenticated users
  /// - Deep link handling
  /// - Splash screen management
  static String? handleRedirect(BuildContext context, GoRouterState state) {
    try {
      // Get current app state from BLoC
      final appConfigState = context.read<AppConfigBloc>().state;
      final currentPath = state.uri.toString();
      
      _logNavigationAttempt(currentPath, appConfigState);

      return _handleAuthenticationRedirects(currentPath, appConfigState);
    } catch (e) {
      LoggerService.error('Error in navigation redirect handler', e);
      // Fallback to login on any error to ensure app doesn't break
      return AppRoutePaths.login;
    }
  }

  /// Handles authentication-based redirects using AppConfigBloc state
  static String? _handleAuthenticationRedirects(String currentPath, AppConfigState appState) {
    final isAuthenticated = appState.appState == AppState.loggedIn;
    final isAuthRoute = AppRoutePaths.isAuthRoute(currentPath);
    final isProtectedRoute = AppRoutePaths.isProtectedRoute(currentPath);
    final isSplashRoute = currentPath == AppRoutePaths.splash;

    LoggerService.app(
      '🔍 Authentication Redirect Analysis:\n'
      '📍 Current Path: $currentPath\n'
      '🔐 Is Authenticated: $isAuthenticated\n'
      '🛂 Is Auth Route: $isAuthRoute\n'
      '🔒 Is Protected Route: $isProtectedRoute\n'
      '🚀 Is Splash Route: $isSplashRoute\n'
      '🎯 App State: ${appState.appState}',
    );

    // ALWAYS allow splash screen to be shown initially
    if (isSplashRoute) {
      LoggerService.app('🚀 ALLOWING: Splash screen access - no redirect during initial load');
      return null;
    }

    // Redirect unauthenticated users trying to access protected routes
    if (!isAuthenticated && isProtectedRoute) {
      LoggerService.app('🚫 BLOCKING: Unauthenticated user trying to access protected route, redirecting to login');
      return AppRoutePaths.login;
    }

    // Redirect authenticated users from auth routes to main
    if (isAuthenticated && isAuthRoute) {
      LoggerService.app('✅ Authenticated user on auth route, redirecting to main');
      return AppRoutePaths.main;
    }

    // No redirect needed
    LoggerService.app('✅ ALLOWING: Navigation permitted, no redirect needed');
    return null;
  }

  /// Validates if a user can access a specific route based on BLoC state
  /// 
  /// This can be extended for role-based access control
  static bool canAccessRoute(String path, AppConfigState appState) {
    final isAuthenticated = appState.appState == AppState.loggedIn;
    final isProtectedRoute = AppRoutePaths.isProtectedRoute(path);
    
    return !isProtectedRoute || isAuthenticated;
  }

  /// Checks if the current route requires authentication
  static bool requiresAuthentication(String path) {
    return AppRoutePaths.isProtectedRoute(path);
  }

  /// Handles deep link validation and preprocessing
  /// 
  /// Can be extended to validate deep link parameters,
  /// handle expired links, or perform additional checks
  static String? handleDeepLink(String path, Map<String, String> queryParams) {
    LoggerService.app('🔗 Processing deep link: $path with params: $queryParams');
    
    // Add any deep link validation logic here
    // For example: validate invite codes, check link expiration, etc.
    
    return null; // No redirect needed for deep links by default
  }

  /// Handles route-specific guards based on app state
  /// 
  /// This method can be used for route-specific validation logic
  /// Example: checking if user has completed onboarding, has required permissions, etc.
  static String? routeSpecificGuard(String path, AppConfigState appState) {
    switch (path) {
      // Example: Onboarding guard
      // case AppRoutePaths.main:
      //   if (!hasCompletedOnboarding) {
      //     return AppRoutePaths.onboarding;
      //   }
      //   break;
      
      // Example: Profile completion guard
      // case AppRoutePaths.tasks:
      //   if (user != null && !user.hasCompletedProfile) {
      //     return AppRoutePaths.completeProfile;
      //   }
      //   break;

      default:
        break;
    }
    
    return null;
  }

  /// Handles logout navigation logic
  /// 
  /// This can be called when user logs out to ensure proper navigation cleanup
  static void handleLogout(BuildContext context) {
    LoggerService.app('🚪 Handling user logout navigation');
    
    // Add AppConfigBloc logout event
    context.read<AppConfigBloc>().add(const LogOutEvent());
    
    // The router will automatically redirect due to state change
    // No manual navigation needed due to the reactive nature
  }

  /// Handles login success navigation logic
  /// 
  /// This can be called after successful authentication
  static void handleLoginSuccess(BuildContext context) {
    LoggerService.app('✅ Handling successful login navigation');
    
    // Add AppConfigBloc login event
    context.read<AppConfigBloc>().add(const LogInEvent());
    
    // The router will automatically redirect due to state change
    // No manual navigation needed due to the reactive nature
  }

  /// Logs navigation attempts for debugging
  static void _logNavigationAttempt(String currentPath, AppConfigState appState) {
    LoggerService.app(
      'Navigation Redirect Check:\n'
      '📍 Current Path: $currentPath\n'
      '🎯 App State: ${appState.appState}\n'
      '🌍 Language: ${appState.language}\n'
      '🔐 Is Authenticated: ${appState.appState == AppState.loggedIn}',
    );
  }

  /// Checks if the app is in a loading state
  /// 
  /// This can be used to show loading screens during state transitions
  static bool isAppLoading(AppConfigState appState) {
    // Add loading state logic if needed
    // For now, we don't have a loading state in AppState enum
    return false;
  }
}

/// Extension for easy navigation guard access from BuildContext
extension NavigationGuardExtensions on BuildContext {
  /// Check if current user can access a specific route
  bool canAccessRoute(String path) {
    final appState = read<AppConfigBloc>().state;
    return NavigationGuards.canAccessRoute(path, appState);
  }

  /// Check if current route requires authentication
  bool routeRequiresAuth(String path) {
    return NavigationGuards.requiresAuthentication(path);
  }

  /// Handle logout with proper navigation
  void handleLogout() {
    NavigationGuards.handleLogout(this);
  }

  /// Handle login success with proper navigation
  void handleLoginSuccess() {
    NavigationGuards.handleLoginSuccess(this);
  }
}
