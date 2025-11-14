import 'dart:async';
import 'dart:ui' as ui;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_rewards/config/enums/app_languages.dart';
import 'package:bloc_rewards/config/enums/app_state.dart';
import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/config/languages/app_local.dart';
import 'package:injectable/injectable.dart';


part 'app_config_event.dart';

part 'app_config_state.dart';

@injectable
class AppConfigBloc extends Bloc<AppConfigEvent, AppConfigState> {
  late StreamSubscription? _localeSubscription;
  
  AppConfigBloc()
      : super(AppConfigState(
            language: _getInitialLanguage(),
            appState: CacheStorageServices().hasToken
                ? AppState.loggedIn
                : AppState.loggedOut)) {
    on<ChangeLanguageEvent>(_setLanguage);
    on<LogInEvent>(_logIn);
    on<LogOutEvent>(_logOut);
    on<SyncWithSystemLocaleEvent>(_syncWithSystemLocale);
    
    _initializeLocaleListener();
  }

  /// Get initial language, preferring system locale if no user preference is set
  static AppLanguages _getInitialLanguage() {
    final cachedLocale = CacheStorageServices().locale;
    
    // If no cached locale (first run or cleared data), use system locale
    if (cachedLocale == null || cachedLocale.isEmpty) {
      return AppLocale().getSystemLanguage();
    }
    
    return AppLocale().currentLanguage();
  }

  FutureOr<void> _setLanguage(ChangeLanguageEvent event, emit) async {
    await AppLocale().setLocale(event.language);
    emit(AppConfigState(
        language: AppLocale().currentLanguage(), appState: state.appState));
  }

  FutureOr<void> _logIn(LogInEvent event, emit) async {
    emit(AppConfigState(
        language: AppLocale().currentLanguage(), appState: AppState.loggedIn));
  }

  FutureOr<void> _logOut(LogOutEvent event, emit) async {
    await CacheStorageServices().clearAll();
    emit(AppConfigState(
        language: AppLocale().currentLanguage(), appState: AppState.loggedOut));
  }

  FutureOr<void> _syncWithSystemLocale(SyncWithSystemLocaleEvent event, emit) async {
    await AppLocale().syncWithSystemLocale();
    emit(AppConfigState(
        language: AppLocale().currentLanguage(), appState: state.appState));
  }

  void _initializeLocaleListener() {
    // Listen to system locale changes using PlatformDispatcher
    ui.PlatformDispatcher.instance.onLocaleChanged = () {
      // Check if the app should sync with system locale (no custom locale set)
      final cachedLocale = CacheStorageServices().locale;
      if (cachedLocale == null || cachedLocale.isEmpty) {
        add(const SyncWithSystemLocaleEvent());
      }
    };
  }

  @override
  Future<void> close() {
    _localeSubscription?.cancel();
    return super.close();
  }
}
