# BLoC-Based Routing System

This directory contains a comprehensive, production-ready routing system that integrates BLoC state management with GoRouter for declarative navigation.

## Overview

The routing system has been refactored to follow clean architecture principles with:

- **Reactive Navigation**: Automatically responds to BLoC state changes
- **Authentication Guards**: Protects routes based on authentication state
- **Type Safety**: Compile-time safe navigation with parameter validation
- **Error Handling**: Graceful error handling with user-friendly screens
- **Comprehensive Logging**: Detailed logging for debugging and monitoring

## Architecture

```
lib/core/presentation/routes/
├── app_routes.dart                 # Main routing entry point
├── route_configuration.dart        # Route definitions and configuration
├── app_route_paths.dart            # Type-safe route path constants
├── navigation_guards.dart          # Authentication and route protection
├── router_bloc_listenable.dart     # BLoC state listening for router
├── route_validation.dart           # Parameter validation utilities
├── route_error_screen.dart         # Error handling UI
└── README.md                       # This documentation
```

## Key Files

### 1. `app_routes.dart`
Main entry point for the routing system. Provides methods to create and manage the GoRouter instance with BLoC integration.

```dart
// Create router with BLoC context
final router = AppRoutes.createRouter(context);
```

### 2. `route_configuration.dart`
Contains all route definitions with comprehensive error handling and parameter validation.

Features:
- Type-safe route builders
- Parameter validation for complex routes
- Fallback screens for invalid parameters
- Comprehensive logging for debugging

### 3. `navigation_guards.dart`
Handles authentication-based redirects and route protection.

Key features:
- Authentication state checking using AppConfigBloc
- Protected route access control
- Deep link handling
- Automatic redirects based on auth state

### 4. `router_bloc_listenable.dart`
Custom ChangeNotifier that listens to BLoC state changes and refreshes the router when authentication state changes.

### 5. `route_validation.dart`
Provides utilities for type-safe parameter validation to prevent runtime crashes.

### 6. `app_route_paths.dart`
Centralized route path constants with helper methods for route classification.

## Usage

### Basic Setup

In your `main.dart` or app setup:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppConfigBloc>(),
      child: BlocBuilder<AppConfigBloc, AppConfigState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: AppRoutes.createRouter(context),
            // ... other properties
          );
        },
      ),
    );
  }
}
```

### Navigation Examples

#### Type-Safe Navigation
```dart
// Simple navigation
context.goToLogin();
context.goToProfile();

// Navigation with parameters
context.goToTaskDetails(task: taskEntity);
context.goToDoTask(
  comment: commentEntity,
  taskUrl: 'https://example.com'
);
```

#### Authentication-Aware Navigation
```dart
// Automatic state-based redirection
context.handleLoginSuccess(); // Redirects to main screen
context.handleLogout(); // Clears state and redirects to login
```

#### Manual Navigation
```dart
// Traditional GoRouter navigation still works
context.go('/profile');
context.push('/task-details', extra: taskEntity);
```

## Route Protection

The system automatically protects routes based on authentication state:

### Public Routes
- `/splash`
- `/login`
- `/register`

### Protected Routes (require authentication)
- `/main`
- `/profile`
- `/tasks`
- `/redeem`
- And all other app routes

### Route Classification
```dart
// Check route accessibility
if (context.canAccessRoute('/profile')) {
  // Navigate to profile
}

// Check if route requires authentication
if (context.routeRequiresAuth('/tasks')) {
  // Ensure user is authenticated
}
```

## Error Handling

### Route Errors
Invalid navigation attempts show a user-friendly error screen with:
- Clear error message
- Navigation options (go home, go back)
- Debug information (in debug mode)
- Issue reporting capability

### Parameter Validation
All complex route parameters are validated:

```dart
// Automatic validation with fallback
GoRoute(
  path: '/task-details',
  builder: (context, state) {
    final task = RouteValidation.validateExtra<TaskEntity>(
      state.extra,
      'task-details'
    );
    
    return task != null 
      ? TaskDetailsScreen(task: task)
      : TasksScreen(); // Safe fallback
  },
);
```

## State Management Integration

### BLoC State Listening
The router automatically refreshes when BLoC state changes:

```dart
// RouterBlocListenable listens to AppConfigBloc
_appConfigBloc.stream.listen((state) {
  if (authStateChanged) {
    notifyListeners(); // Triggers router refresh
  }
});
```

### Authentication Flow
1. User logs in → AppConfigBloc emits new state
2. RouterBlocListenable detects state change
3. NavigationGuards handle redirect logic
4. User is automatically redirected to appropriate screen

## Debugging

### Comprehensive Logging
All navigation events are logged with detailed information:

```
🔍 Authentication Redirect Analysis:
📍 Current Path: /tasks
🔐 Is Authenticated: true
🛂 Is Auth Route: false
🔒 Is Protected Route: true
🎯 App State: loggedIn
```

### Debug Mode Features
- Route error details
- Parameter validation logs
- State change notifications
- Navigation attempt tracking

## Best Practices

### Navigation
1. **Use type-safe extensions**: Prefer `context.goToProfile()` over `context.go('/profile')`
2. **Handle parameters safely**: Always validate route parameters
3. **Provide fallbacks**: Include fallback screens for invalid parameters
4. **Use BLoC events**: Trigger navigation through BLoC events when appropriate

### Route Definition
1. **Validate parameters**: Use `RouteValidation` for all complex parameters
2. **Include logging**: Add debug logging for route building
3. **Handle errors gracefully**: Provide fallback screens for invalid data
4. **Follow naming conventions**: Use consistent naming for routes and builders

### State Management
1. **Use BLoC events**: Trigger navigation state changes through BLoC events
2. **Avoid direct navigation**: Let the router handle redirects based on state
3. **Keep guards simple**: Navigation guards should only handle routing logic
4. **Separate concerns**: Keep authentication logic in BLoCs, not in guards

## Testing

The routing system is designed for testability:

### Unit Testing
- Test navigation guards with different auth states
- Test route validation with various parameter types
- Test BLoC integration with state changes

### Widget Testing
- Test navigation behavior in widgets
- Test error screen display
- Test parameter passing between screens

### Integration Testing
- Test complete navigation flows
- Test authentication-based redirects
- Test deep link handling

## Migration Guide

### From Old System
If migrating from the old routing system:

1. **Replace router usage**:
   ```dart
   // Old
   MaterialApp.router(routerConfig: AppRoutes.router)
   
   // New
   MaterialApp.router(routerConfig: AppRoutes.createRouter(context))
   ```

2. **Update navigation calls**:
   ```dart
   // Old
   context.go('/profile')
   
   // New
   context.goToProfile()
   ```

3. **Handle authentication**:
   ```dart
   // Old
   // Manual navigation after login
   context.go('/main')
   
   // New
   // Automatic redirect through BLoC
   context.handleLoginSuccess()
   ```

## Performance Considerations

- **Router instance**: Created once and reused with BLoC state changes
- **Listenable efficiency**: Only notifies when authentication state actually changes
- **Route building**: Lazy route building for better performance
- **Parameter validation**: Fast validation with early returns

## Future Enhancements

Potential improvements for the routing system:

1. **Role-based access control**: Extend guards for user roles
2. **Route analytics**: Track navigation patterns
3. **Deep link validation**: More sophisticated deep link handling
4. **Route caching**: Cache route configurations for better performance
5. **Multi-tenant routing**: Support for multiple app configurations
