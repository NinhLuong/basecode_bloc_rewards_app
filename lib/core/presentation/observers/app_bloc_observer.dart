import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/shared/services/logger/logger_service.dart';

/// Global BlocObserver for monitoring all Bloc/Cubit state changes in the application.
/// 
/// This observer provides comprehensive logging for:
/// - Bloc/Cubit creation and closure
/// - State transitions with detailed information
/// - Event handling in Blocs
/// - Error occurrences within Blocs/Cubits
/// 
/// The observer follows Flutter best practices for debugging and monitoring
/// state management throughout the application lifecycle.
/// 
/// ## Usage
/// Register this observer in main.dart before running the app:
/// ```dart
/// void main() {
///   Bloc.observer = AppBlocObserver();
///   runApp(MyApp());
/// }
/// ```
/// 
/// ## Log Levels
/// - **Debug**: Detailed state transition information
/// - **Info**: General Bloc lifecycle events (creation, closure)
/// - **Warning**: Important state changes that might need attention
/// - **Error**: Errors that occur within Blocs/Cubits
class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    LoggerService.info('🆕 Bloc Created: ${bloc.runtimeType}');
  }

  @override
  void onEvent(BlocBase bloc, Object? event) {
    // Only log events for Bloc instances (not Cubit)
    if (bloc is Bloc) {
      super.onEvent(bloc, event);
      LoggerService.debug('📤 Event Added: ${bloc.runtimeType} - Event: ${event.runtimeType}');
    }
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    
    // Log state transitions with current and next state information
    final currentState = change.currentState.runtimeType;
    final nextState = change.nextState.runtimeType;
    
    LoggerService.debug(
      '🔄 State Transition: ${bloc.runtimeType}\n'
      '   From: $currentState\n'
      '   To: $nextState'
    );
    
    // Log important state changes at info level for easier filtering
    if (_isImportantStateChange(change)) {
      LoggerService.info(
        '⚡ Important State Change: ${bloc.runtimeType} -> $nextState'
      );
    }
  }

  @override
  void onTransition(BlocBase bloc, Transition transition) {
    // For Blocs (not Cubits), log the complete transition including event
    if (bloc is Bloc) {
      super.onTransition(bloc, transition);
      LoggerService.debug(
        '🔀 Transition: ${bloc.runtimeType}\n'
        '   Event: ${transition.event.runtimeType}\n'
        '   From: ${transition.currentState.runtimeType}\n'
        '   To: ${transition.nextState.runtimeType}'
      );
    }
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    
    LoggerService.error(
      '❌ Bloc Error in ${bloc.runtimeType}: $error',
      error,
      stackTrace,
    );
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    LoggerService.info('🗑️ Bloc Closed: ${bloc.runtimeType}');
  }

  /// Determines if a state change is important enough to log at info level.
  /// 
  /// This helps filter out verbose debug information while keeping
  /// track of critical state changes like loading, error, and success states.
  /// 
  /// Override this method to customize what constitutes an important state change
  /// based on your application's specific requirements.
  bool _isImportantStateChange(Change change) {
    final nextStateStr = change.nextState.toString().toLowerCase();
    
    // Log states that typically indicate important application events
    return nextStateStr.contains('loading') ||
           nextStateStr.contains('error') ||
           nextStateStr.contains('success') ||
           nextStateStr.contains('failure') ||
           nextStateStr.contains('completed') ||
           nextStateStr.contains('authenticated') ||
           nextStateStr.contains('unauthenticated');
  }
}
