import 'package:bloc_rewards/core/data/datasources/local/cache/cache_storage_services.dart';
import 'package:bloc_rewards/shared/constants/app_constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transactions_parameters.g.dart';

@immutable
@JsonSerializable()
class TransactionsParameters extends Equatable {
  @JsonKey(name: 'clientId')
  final int clientId;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'user')
  final String username;

  TransactionsParameters({
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
  }) : clientId = clientId ?? AppConstants.clientId,
       accountId = accountId ?? CacheStorageServices().accountId,
       accessToken = accessToken ?? CacheStorageServices().accessToken,
       username = username ?? CacheStorageServices().username;

  factory TransactionsParameters.fromJson(Map<String, dynamic> json) => 
      _$TransactionsParametersFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsParametersToJson(this);

  @override
  List<Object> get props => [clientId, accountId, accessToken, username];
}
