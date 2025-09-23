import 'package:flutter/foundation.dart';

/// Type-safe route paths for the application
/// This provides compile-time safety and better developer experience
@immutable
sealed class AppRoutePaths {
  const AppRoutePaths._();

  // Auth Routes
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';

  // Main App Routes
  static const String main = '/main';
  static const String home = '/home';

  // Profile Routes
  static const String profile = '/profile';
  static const String contactUs = '/contact-us';
  static const String terms = '/terms';

  // Rewards Routes
  static const String redeem = '/redeem';
  static const String transactions = '/transactions';

  // Tasks Routes
  static const String tasks = '/tasks';
  static const String taskDetails = '/task-details';
  static const String doTask = '/do-task';

  // Live Offers Routes
  static const String liveOffers = '/live-offers';

  // Top Users Routes
  static const String leaderboard = '/leaderboard';

  /// All public routes (accessible without authentication)
  static const Set<String> publicRoutes = {
    splash,
    login,
    register,
  };

  /// All protected routes (require authentication)
  static const Set<String> protectedRoutes = {
    main,
    home,
    profile,
    contactUs,
    terms,
    redeem,
    transactions,
    tasks,
    taskDetails,
    doTask,
    liveOffers,
    leaderboard,
  };

  /// Auth-related routes (redirect to main if authenticated)
  static const Set<String> authRoutes = {
    login,
    register,
  };

  /// Helper method to check if a route is public
  static bool isPublicRoute(String route) {
    return publicRoutes.contains(route);
  }

  /// Helper method to check if a route is protected
  static bool isProtectedRoute(String route) {
    return protectedRoutes.contains(route);
  }

  /// Helper method to check if a route is auth-related
  static bool isAuthRoute(String route) {
    return authRoutes.contains(route);
  }

  /// Helper method to get route by checking path prefix
  static bool matchesRoute(String currentPath, String targetRoute) {
    return currentPath.startsWith(targetRoute);
  }
}

/// Navigation helpers for type-safe navigation
extension AppRouteNavigation on String {
  /// Check if current path matches target route
  bool matchesRoute(String targetRoute) {
    return startsWith(targetRoute);
  }

  /// Extract route parameters from the current path
  Map<String, String> extractParams() {
    final uri = Uri.parse(this);
    return uri.queryParameters;
  }
}
