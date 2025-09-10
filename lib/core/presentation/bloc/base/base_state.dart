import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../config/errors/failure.dart';

part 'base_state.freezed.dart';

/// The [BaseState] sealed class represents the different states of a request using Freezed.
/// This provides compile-time exhaustiveness checking, better pattern matching capabilities,
/// and automatic code generation for equality, hashCode, toString, and copyWith methods.
///
/// [BaseState] has generic implementation, if you don't set T as a Type it will be dynamic by default.
///
/// States:
/// - [BaseState.initial]: The initial state before any action is taken
/// - [BaseState.loading]: Indicates that the request is in progress
/// - [BaseState.success]: Indicates successful completion with data
/// - [BaseState.error]: Indicates an error occurred with failure details
///
/// Usage in Bloc:
/// - Initialize: `super(const BaseState<EntityType>.initial())`
/// - Emit states: `emit(const BaseState<EntityType>.loading())`
/// - Pattern matching: Use when/maybeWhen for exhaustive handling
///
/// Backward compatibility is maintained through extensions that provide the same API as before.
@freezed
sealed class BaseState<T> with _$BaseState<T> {
  /// Represents the initial state before any request is made
  const factory BaseState.initial() = BaseStateInitial<T>;
  
  /// Represents the loading state during request processing
  const factory BaseState.loading() = BaseStateLoading<T>;
  
  /// Represents the success state with data
  const factory BaseState.success(T data) = BaseStateSuccess<T>;
  
  /// Represents the error state with failure information
  const factory BaseState.error(Failure failure) = BaseStateError<T>;
}

/// Extension to maintain backward compatibility with existing code
/// This ensures that all existing bloc and UI code continues to work without changes
extension BaseStateExtensions<T> on BaseState<T> {
  /// Check if the state is in initial/init state
  bool get isInit => this is BaseStateInitial<T>;
  
  /// Check if the state is in loading state
  bool get isLoading => this is BaseStateLoading<T>;
  
  /// Check if the state is in success state
  bool get isSuccess => this is BaseStateSuccess<T>;
  
  /// Check if the state is in error state
  bool get isError => this is BaseStateError<T>;
  
  /// Get the data from success state, null otherwise
  T? get data => maybeWhen(
    success: (data) => data,
    orElse: () => null,
  );
  
  /// Get the failure from error state, default failure otherwise
  Failure get failure => maybeWhen(
    error: (failure) => failure,
    orElse: () => const Failure('init Failure'),
  );
  
  /// Get the error message from failure
  String get errorMessage => failure.message;
  
  /// Create a loading state
  BaseState<T> loading() => BaseState<T>.loading();
  
  /// Create a success state with data
  BaseState<T> success(T newData) => BaseState<T>.success(newData);
  
  /// Create an error state with failure
  BaseState<T> error(Failure newFailure) => BaseState<T>.error(newFailure);
  
  /// Create an error state with default unknown failure
  BaseState<T> defaultError() => BaseState<T>.error(UnknownFailure());
  
  /// Reset to initial state
  BaseState<T> reset() => BaseState<T>.initial();
}
