import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'redeem_parameters.g.dart';

@immutable
@JsonSerializable()
class RedeemParameters extends Equatable {
  @JsonKey(name: 'clientId')
  final int clientId;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'user')
  final String username;
  
  @JsonKey(name: 'name')
  final String name;
  
  @JsonKey(name: 'value')
  final String value;
  
  @JsonKey(name: 'dev_name')
  final String devName;
  
  @JsonKey(name: 'dev_man')
  final String devMan;

  RedeemParameters({
    required this.name,
    required this.value,
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
    String? devName,
    String? devMan,
  }) : clientId = clientId ?? AppConstants.clientId,
       accountId = accountId ?? CacheStorageServices().accountId,
       accessToken = accessToken ?? CacheStorageServices().token,
       username = username ?? CacheStorageServices().username,
       devName = devName ?? Platform.operatingSystem,
       devMan = devMan ?? AppConstants.devMan;

  Map<String, dynamic> toJson() => _$RedeemParametersToJson(this);

  @override
  List<Object> get props => [name, value];
}
