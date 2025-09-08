import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'payouts_parameters.g.dart';

@immutable
@JsonSerializable()
class PayoutsParameters extends Equatable {
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'user')
  final String username;
  
  @JsonKey(name: 'clientId')
  final int clientId;

  PayoutsParameters({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
  }) : accessToken = accessToken ?? CacheStorageServices().token,
       accountId = accountId ?? CacheStorageServices().accountId,
       username = username ?? CacheStorageServices().username,
       clientId = clientId ?? AppConstants.clientId;

  factory PayoutsParameters.fromJson(Map<String, dynamic> json) => 
      _$PayoutsParametersFromJson(json);

  Map<String, dynamic> toJson() => _$PayoutsParametersToJson(this);

  @override
  List<Object> get props => [username];
}
