import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/shared/constants/app_constants.dart';
import 'package:magic_rewards/core/data/datasources/local/cache/cache_storage_services.dart';

part 'home_parameters.g.dart';

@JsonSerializable()
class HomeParameters extends Equatable {
  @JsonKey(name: 'clientId')
  final int clientId;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'accessToken')
  final String accessToken;
  
  @JsonKey(name: 'user')
  final String username;

  HomeParameters({
    int? clientId,
    String? accountId,
    String? accessToken,
    String? username,
  }) : clientId = clientId ?? AppConstants.clientId,
       accountId = accountId ?? CacheStorageServices().accountId,
       accessToken = accessToken ?? CacheStorageServices().token,
       username = username ?? CacheStorageServices().username;

  factory HomeParameters.fromJson(Map<String, dynamic> json) => 
      _$HomeParametersFromJson(json);

  Map<String, dynamic> toJson() => _$HomeParametersToJson(this);

  @override
  List<Object> get props => [clientId, accountId, accessToken, username];
}
