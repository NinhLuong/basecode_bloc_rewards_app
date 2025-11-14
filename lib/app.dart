import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc_rewards/config/di/injectable_config.dart';
import 'package:bloc_rewards/config/themes/app_theme.dart';
import 'package:bloc_rewards/core/presentation/routes/app_routes.dart';
import 'package:bloc_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:bloc_rewards/generated/l10n.dart';
import 'package:bloc_rewards/shared/constants/app_constants.dart';
import 'package:bloc_rewards/shared/extensions/language_extensions/app_languages_extension.dart';
import 'package:bloc_rewards/config/languages/app_local.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late AppConfigBloc _appConfigBloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _appConfigBloc = getIt<AppConfigBloc>();
    
    // Initial sync with system locale on app start
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkAndSyncSystemLocale();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // When app becomes active (user returns from system settings), check for locale changes
    if (state == AppLifecycleState.resumed) {
      _checkAndSyncSystemLocale();
    }
  }

  void _checkAndSyncSystemLocale() {
    // Check if user has set a custom language preference
    // If not, sync with system locale
    if (!AppLocale().isLanguageMatchingSystem()) {
      _appConfigBloc.add(const SyncWithSystemLocaleEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _appConfigBloc,
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, child) {
          // Create router with BLoC context for reactive navigation
          return BlocBuilder<AppConfigBloc, AppConfigState>(
            builder: (context, state) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                locale: state.language.locale,
                localeResolutionCallback: (locale, supportedLocales) {
                  // If the device locale is supported, use it
                  if (locale != null) {
                    for (var supportedLocale in supportedLocales) {
                      if (supportedLocale.languageCode == locale.languageCode) {
                        return supportedLocale;
                      }
                    }
                  }
                  // Fallback to the first supported locale (English)
                  return supportedLocales.first;
                },
                title: AppConstants.applicationName,
                theme: AppTheme().lightTheme,
                darkTheme: AppTheme().lightTheme,
                // Use BLoC-integrated router configuration
                routerConfig: AppRoutes.createRouter(context),
              );
            },
          );
        },
      ),
    );
  }
}