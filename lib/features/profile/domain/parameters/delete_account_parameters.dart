import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'delete_account_parameters.freezed.dart';
part 'delete_account_parameters.g.dart';

@freezed
abstract class DeleteAccountParameters with _$DeleteAccountParameters {
  const DeleteAccountParameters._();

  const factory DeleteAccountParameters({
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'clientId') required int clientId,
  }) = _DeleteAccountParameters;

  factory DeleteAccountParameters.create({
    String? accessToken,
    String? accountId,
    int? clientId,
  }) => DeleteAccountParameters(
    accessToken: accessToken ?? CacheStorageServices().token,
    accountId: accountId ?? CacheStorageServices().accountId,
    clientId: clientId ?? AppConstants.clientId,
  );

  factory DeleteAccountParameters.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountParametersFromJson(json);
}
