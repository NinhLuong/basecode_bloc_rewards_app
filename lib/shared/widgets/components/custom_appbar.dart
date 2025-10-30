import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/core/presentation/routes/route_configuration.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final Widget? title;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final double height;
  final bool withBack;

  const CustomAppBar(
      {super.key,
      this.titleText,
      this.title,
      this.actions,
      this.bottom,
      this.height = kToolbarHeight,
      this.withBack = false})
      : assert(title != null || titleText != null);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? Text(titleText!, style: context.f16400),
      backgroundColor: AppColors.blue1,
      elevation: 4,
      shadowColor: Colors.black.withValues(alpha:0.25),
      actions: actions,
      bottom: bottom,
      leading: withBack
          ? IconButton(
              padding: const EdgeInsetsDirectional.only(start: 20),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => _handleBackNavigation(context))
          : null,
    );
  }

  /// Handles back navigation with safety checks and intelligent fallback
  void _handleBackNavigation(BuildContext context) {
    try {
      final currentLocation = GoRouterState.of(context).uri.toString();
      L.debug('🔙 Back navigation requested from: $currentLocation');
      
      if (context.canPop()) {
        L.debug('✅ Can pop: Navigating back');
        context.pop();
      } else {
        L.warning('⚠️ Cannot pop: Using intelligent fallback navigation');
      }
    } catch (error, stackTrace) {
      L.error(
        'Error during back navigation, falling back to main screen',
        error,
        stackTrace,
      );
      // Ultimate fallback
      context.goToMain();
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
