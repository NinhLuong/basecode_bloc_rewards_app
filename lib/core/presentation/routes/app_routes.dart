import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart' as config;
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Centralized routing system using BLoC for state management
/// 
/// The [AppRoutes] class provides a clean, reactive routing solution with:
/// - BLoC-based state management for declarative navigation
/// - Authentication guards and route protection
/// - Type-safe navigation with parameter validation
/// - Comprehensive error handling and logging
/// - Production-ready navigation patterns following clean architecture
/// 
/// ## Key Features:
/// - **Reactive Navigation**: Automatically responds to authentication state changes
/// - **Route Protection**: Guards protected routes from unauthorized access
/// - **Type Safety**: Compile-time safe navigation with parameter validation
/// - **Error Handling**: Graceful error handling with user-friendly error screens
/// - **Logging**: Comprehensive logging for debugging and monitoring
/// 
/// ## Usage:
/// ```dart
/// MaterialApp.router(
///   routerConfig: AppRoutes.router,
/// )
/// ```
/// 
/// ## Navigation Examples:
/// ```dart
/// // Type-safe navigation
/// context.goToLogin();
/// context.goToTaskDetails(task: task);
/// 
/// // Authentication-aware navigation
/// context.handleLoginSuccess(); // Automatically redirects based on auth state
/// context.handleLogout(); // Clears state and redirects to login
/// ```
class AppRoutes {
  const AppRoutes._();

  /// Creates and returns the main GoRouter instance with BLoC integration
  /// 
  /// This method must be called after the BLoC is available in the widget tree.
  /// It creates a router that automatically responds to authentication state changes
  /// and handles route protection through the NavigationGuards system.
  static GoRouter createRouter(BuildContext context) {
    L.app('🏗️ Creating AppRoutes with BLoC integration');
    
    try {
      // Ensure AppConfigBloc is available
      final appConfigBloc = context.read<AppConfigBloc>();
      L.app('✅ AppConfigBloc found, current state: ${appConfigBloc.state.appState}');
      
      final router = config.RouteConfiguration.createRouter(context);
      L.app('🎯 AppRoutes: Router successfully created with BLoC integration');
      
      return router;
    } catch (error, stackTrace) {
      L.error(
        'Failed to create AppRoutes router:\n'
        'Error: $error\n'
        'This is a critical error that prevents the app from functioning properly.',
        error,
        stackTrace,
      );
      rethrow;
    }
  }

  /// Static router getter for backward compatibility
  /// 
  /// Note: This approach requires the router to be initialized elsewhere
  /// and is less flexible than the context-based approach above.
  /// Prefer using createRouter(context) for new implementations.
  static GoRouter? _router;
  
  static GoRouter get router {
    if (_router == null) {
      L.error(
        'AppRoutes.router accessed before initialization. '
        'Use AppRoutes.createRouter(context) to initialize the router properly.'
      );
      throw StateError(
        'Router not initialized. Call AppRoutes.createRouter(context) first.'
      );
    }
    return _router!;
  }

  /// Initialize the static router instance
  /// 
  /// This method is provided for backward compatibility and specific use cases
  /// where a static router instance is required.
  static void initializeStaticRouter(BuildContext context) {
    L.app('🔧 Initializing static router instance');
    _router = createRouter(context);
  }

  /// Dispose of the static router instance
  /// 
  /// Call this method when the router is no longer needed to clean up resources
  static void dispose() {
    L.app('🗑️ Disposing AppRoutes static router');
    _router = null;
  }
}
