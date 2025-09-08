import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'delete_account_parameters.g.dart';

@immutable
@JsonSerializable()
class DeleteAccountParameters extends Equatable {
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'clientId')
  final int clientId;

  DeleteAccountParameters({
    String? accessToken,
    String? accountId,
    int? clientId,
  })
      : accessToken = accessToken ?? CacheStorageServices().token,
        accountId = accountId ?? CacheStorageServices().accountId,
        clientId = clientId ?? AppConstants.clientId;

  factory DeleteAccountParameters.fromJson(Map<String, dynamic> json) => 
      _$DeleteAccountParametersFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAccountParametersToJson(this);

  @override
  List<Object> get props => [accessToken, accountId, clientId];
}
