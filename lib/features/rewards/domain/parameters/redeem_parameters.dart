import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'redeem_parameters.freezed.dart';
part 'redeem_parameters.g.dart';

@freezed
abstract class RedeemParameters with _$RedeemParameters {
  const RedeemParameters._();

  const factory RedeemParameters({
    @JsonKey(name: 'clientId') required int clientId,
    @JsonKey(name: 'accountId') required String accountId,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'user') required String username,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'value') required String value,
    @JsonKey(name: 'dev_name') required String devName,
    @JsonKey(name: 'dev_man') required String devMan,
  }) = _RedeemParameters;

  factory RedeemParameters.create({
    required String name,
    required String value,
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
    String? devName,
    String? devMan,
  }) => RedeemParameters(
    clientId: clientId ?? AppConstants.clientId,
    accountId: accountId ?? CacheStorageServices().accountId,
    accessToken: accessToken ?? CacheStorageServices().token,
    username: username ?? CacheStorageServices().username,
    name: name,
    value: value,
    devName: devName ?? Platform.operatingSystem,
    devMan: devMan ?? AppConstants.devMan,
  );

  factory RedeemParameters.fromJson(Map<String, dynamic> json) =>
      _$RedeemParametersFromJson(json);
}
