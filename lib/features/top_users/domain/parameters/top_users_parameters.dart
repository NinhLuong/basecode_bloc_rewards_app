import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'top_users_parameters.g.dart';

@immutable
@JsonSerializable()
class TopUsersParameters extends Equatable {
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'user')
  final String username;
  
  @JsonKey(name: 'clientId')
  final int clientId;
  
  @JsonKey(name: 'half_month')
  final int _halfMonth;

  TopUsersParameters({
    String? accessToken,
    String? accountId,
    String? username,
    int? clientId,
    bool halfMonth = false,
  })
      : accessToken = accessToken ?? CacheStorageServices().token,
        accountId = accountId ?? CacheStorageServices().accountId,
        username = username ?? CacheStorageServices().username,
        clientId = clientId ?? AppConstants.clientId,
        _halfMonth = halfMonth ? 1 : 0;

  bool get halfMonth => _halfMonth == 1;

  factory TopUsersParameters.fromJson(Map<String, dynamic> json) => 
      _$TopUsersParametersFromJson(json);

  Map<String, dynamic> toJson() => _$TopUsersParametersToJson(this);

  @override
  List<Object> get props => [username, halfMonth];
}
