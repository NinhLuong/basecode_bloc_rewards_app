import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'payouts_parameters.freezed.dart';
part 'payouts_parameters.g.dart';

@freezed
abstract class PayoutsParameters with _$PayoutsParameters {
  const PayoutsParameters._();

  const factory PayoutsParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'clientId') required int clientId,
  }) = _PayoutsParameters;

  factory PayoutsParameters.create({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
  }) => PayoutsParameters(
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    username: username ?? CacheStorageServices().username,
    clientId: clientId ?? AppConstants.clientId,
  );

  factory PayoutsParameters.fromJson(Map<String, dynamic> json) =>
      _$PayoutsParametersFromJson(json);
}
