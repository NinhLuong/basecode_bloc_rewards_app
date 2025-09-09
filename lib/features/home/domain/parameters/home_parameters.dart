import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'home_parameters.freezed.dart';
part 'home_parameters.g.dart';

@freezed
abstract class HomeParameters with _$HomeParameters {
  const HomeParameters._();

  const factory HomeParameters({
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'user') required String username,
  }) = _HomeParameters;

  factory HomeParameters.create({
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
  }) => HomeParameters(
    clientId: clientId ?? AppConstants.clientId,
    accountId: accountId ?? CacheStorageServices().accountId,
    accessToken: accessToken ?? CacheStorageServices().token,
    username: username ?? CacheStorageServices().username,
  );

  factory HomeParameters.fromJson(Map<String, dynamic> json) =>
      _$HomeParametersFromJson(json);
}
