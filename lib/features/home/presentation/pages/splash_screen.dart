import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/config/enums/app_state.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/core/presentation/routes/app_route_paths.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/shared/constants/app_duration.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/shared/widgets/components/app_logo.dart';
import 'package:magic_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _handleSplashNavigation(context);
    return AppScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogo(),
          SizedBox(height: 30.w),
          Text(AppConstants.applicationName.toUpperCase(),
              style: context.f20700),
          Text(AppConstants.applicationVersion, style: context.f16600),
        ],
      ),
    );
  }

  /// Handles navigation logic after splash screen display
  void _handleSplashNavigation(BuildContext context) {
    Future.delayed(AppDuration.splashDuration).then((_) {
      try {
        // Get current authentication state from BLoC
        final appConfigState = context.read<AppConfigBloc>().state;
        final isAuthenticated = appConfigState.appState == AppState.loggedIn;

        LoggerService.app(
          '🚀 Splash navigation decision:\n'
          '🔐 Is Authenticated: $isAuthenticated\n'
          '🎯 App State: ${appConfigState.appState}\n'
          '📍 Target Route: ${isAuthenticated ? AppRoutePaths.main : AppRoutePaths.login}',
        );

        if (isAuthenticated) {
          LoggerService.app('✅ User authenticated, navigating to main screen');
          context.goToMain();
        } else {
          LoggerService.app('🔑 User not authenticated, navigating to login screen');
          context.goToLogin();
        }
      } catch (error, stackTrace) {
        LoggerService.error(
          'Error during splash navigation, falling back to login',
          error,
          stackTrace,
        );
        // Fallback to login on any error
        context.goToLogin();
      }
    });
  }
}
