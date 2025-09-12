import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/home/domain/entities/home_with_user_entity.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success(HomeWithUserEntity data) = HomeSuccess;
  const factory HomeState.error(Failure failure) = HomeError;
}

extension HomeStateExtensions on HomeState {
  /// Check if the state is in initial state
  bool get isInitial => this is HomeInitial;
  
  /// Check if the state is in loading state
  bool get isLoading => this is HomeLoading;
  
  /// Check if the state is in success state
  bool get isSuccess => this is HomeSuccess;
  
  /// Check if the state is in error state
  bool get isError => this is HomeError;
  
  /// Get the data from success state, null otherwise
  HomeWithUserEntity? get data => whenOrNull(
    success: (data) => data,
  );
  
  /// Get the failure from error state
  Failure? get failure => whenOrNull(
    error: (failure) => failure,
  );
  
  /// Get the error message from failure
  String get errorMessage => failure?.message ?? '';
  
  /// Convenience getters for user data
  String get username => data?.username ?? '';
  String get fullName => data?.fullName ?? '';
  String get email => data?.email ?? '';
  String get points => data?.points ?? '0';
  String get redeemedPoints => data?.redeemedPoints ?? '0';
  String get accountId => data?.accountId ?? '';
  String? get accessToken => data?.accessToken;
  
  /// Convenience getters for home data
  String get balance => data?.balance ?? '--';
  List<OfferWallEntity> get offerWalls => data?.offerWalls ?? [];
}