import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'profile_parameters.freezed.dart';
part 'profile_parameters.g.dart';

@freezed
abstract class ProfileParameters with _$ProfileParameters {
  const ProfileParameters._();

  const factory ProfileParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
  }) = _ProfileParameters;

  factory ProfileParameters.create({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
  }) => ProfileParameters(
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    username: username ?? CacheStorageServices().username,
    clientId: clientId ?? AppConstants.clientId,
  );

  factory ProfileParameters.fromJson(Map<String, dynamic> json) =>
      _$ProfileParametersFromJson(json);
}
