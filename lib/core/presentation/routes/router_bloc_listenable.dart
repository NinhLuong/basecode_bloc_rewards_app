import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/config/enums/app_state.dart';
import 'package:magic_rewards/core/presentation/bloc/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Custom refresh listenable for GoRouter that listens to BLoC state changes
/// This ensures the router rebuilds when authentication or app state changes
class RouterBlocListenable extends ChangeNotifier {
  RouterBlocListenable(this._appConfigBloc) {
    _subscription = _appConfigBloc.stream.listen(_onStateChanged);
    LoggerService.app('🔧 RouterBlocListenable initialized');
  }

  final AppConfigBloc _appConfigBloc;
  late final StreamSubscription<AppConfigState> _subscription;
  AppState? _previousAppState;

  /// Handles state changes from the AppConfigBloc
  void _onStateChanged(AppConfigState state) {
    final currentAppState = state.appState;
    
    // Only notify listeners when authentication state actually changes
    if (_previousAppState != currentAppState) {
      LoggerService.app(
        '🔄 App state changed, notifying GoRouter:\n'
        '   Previous: $_previousAppState\n'
        '   Current: $currentAppState\n'
        '   Is Authenticated: ${currentAppState == AppState.loggedIn}',
      );
      
      _previousAppState = currentAppState;
      notifyListeners();
    }
  }

  /// Get current authentication state
  bool get isAuthenticated => _appConfigBloc.state.appState == AppState.loggedIn;

  /// Get current app state
  AppState get appState => _appConfigBloc.state.appState;

  @override
  void dispose() {
    LoggerService.app('🗑️ RouterBlocListenable disposed');
    _subscription.cancel();
    super.dispose();
  }
}

/// Extension to easily create RouterBlocListenable from BuildContext
extension RouterBlocListenableExtension on BuildContext {
  /// Create a RouterBlocListenable from the current context's AppConfigBloc
  RouterBlocListenable createRouterListenable() {
    final appConfigBloc = read<AppConfigBloc>();
    return RouterBlocListenable(appConfigBloc);
  }
}
