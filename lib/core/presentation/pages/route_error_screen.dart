import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';

/// Error screen displayed when navigation fails or invalid routes are accessed
/// 
/// This screen provides:
/// - User-friendly error messages
/// - Recovery options (go back, go home)
/// - Detailed error information for debugging
/// - Consistent branding and styling
class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen({
    super.key,
    this.error,
    this.routeLocation,
  });

  final Exception? error;
  final String? routeLocation;

  @override
  Widget build(BuildContext context) {
    _logRoutingError();

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Error'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => _handleNavigation(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Error Image
              Image.asset(
                ImagesPaths.failurePng,
                width: 150.w,
                height: 150.h,
              ),
              SizedBox(height: 24.h),
              
              // Error Title
              Text(
                'Page Not Found', // Use hardcoded string for now
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              
              // Error Description
              Text(
                _getErrorDescription(context),
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                ),
                textAlign: TextAlign.center,
              ),
              
              // Debug info in debug mode
              if (routeLocation?.isNotEmpty == true) ...[
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Route: ${routeLocation!}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontFamily: 'monospace',
                        ),
                      ),
                      if (error != null) ...[
                        SizedBox(height: 4.h),
                        Text(
                          'Error: ${error.toString()}',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontFamily: 'monospace',
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
              
              SizedBox(height: 32.h),
              
              // Action Buttons
              Column(
                children: [
                  AppButton(
                    onPressed: () => _handleNavigation(context),
                    text: 'Go to Home', // Use hardcoded string for now
                    width: double.infinity,
                  ),
                  SizedBox(height: 12.h),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Go Back', // Use hardcoded string for now
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _logRoutingError() {
    L.error(
      'Navigation Error Occurred:\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n'
      '🔥 ROUTE ERROR: ${error?.toString() ?? 'Unknown routing error'}\n'
      '🌐 ATTEMPTED ROUTE: ${routeLocation ?? 'Unknown route'}\n'
      '📋 ERROR TYPE: ${error?.runtimeType ?? 'Unknown type'}\n'
      '━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━',
      error,
      StackTrace.current,
    );
  }

  String _getErrorDescription(BuildContext context) {
    if (routeLocation?.isNotEmpty == true) {
      return 'The page you are looking for does not exist or has been moved.';
    }
    return 'An error occurred while navigating. Please try again.';
  }

  void _handleNavigation(BuildContext context) {
    // Navigate to main screen or splash depending on context
    if (context.canPop()) {
      // If we can pop, go back to previous screen
      context.pop();
    } else {
      // Otherwise, go to main screen
      context.go(AppRoutePaths.main);
    }
  }
}

/// Extension to add error screen support to GoRouter
extension GoRouterErrorExtension on GoRouterState {
  /// Create a RouteErrorScreen from GoRouterState
  RouteErrorScreen toErrorScreen() {
    return RouteErrorScreen(
      error: error,
      routeLocation: uri.toString(),
    );
  }
}
