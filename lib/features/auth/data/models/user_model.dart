import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

part 'user_model.g.dart';

@immutable
@JsonSerializable()
class UserModel extends BaseModel<UserEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  
  @JsonKey(name: 'accountId')
  final String? accountId;
  
  @JsonKey(name: 'account')
  final List<Account>? account;

  const UserModel({
    this.error,
    this.errorCode,
    this.accessToken,
    this.accountId,
    this.account,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => 
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  UserEntity toEntity() {
    return UserEntity(
        accessToken: accessToken!,
        accountId: accountId!,
        email: account![0].email!,
        fullName: account![0].fullname!,
        points: account![0].points!,
        redeemedPoints: account![0].redeemedPoints ?? '0',
        userName: account![0].username!);
  }
}

@immutable
@JsonSerializable()
class Account {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'id')
  final String? id;
  
  @JsonKey(name: 'last_access')
  final String? lastAccess;
  
  @JsonKey(name: 'last_ip_addr')
  final String? lastIpAddr;
  
  @JsonKey(name: 'gcm')
  final String? gcm;
  
  @JsonKey(name: 'state')
  final String? state;
  
  @JsonKey(name: 'fullname')
  final String? fullname;
  
  @JsonKey(name: 'username')
  final String? username;
  
  @JsonKey(name: 'email')
  final String? email;
  
  @JsonKey(name: 'regtime')
  final String? regtime;
  
  @JsonKey(name: 'ip_addr')
  final String? ipAddr;
  
  @JsonKey(name: 'mobile')
  final String? mobile;
  
  @JsonKey(name: 'points')
  final String? points;
  
  @JsonKey(name: 'refer')
  final String? refer;
  
  @JsonKey(name: 'refered')
  final String? refered;
  
  @JsonKey(name: 'redeemed_points')
  final String? redeemedPoints;
  
  @JsonKey(name: 'total_points')
  final String? totalPoints;

  const Account({
    this.error,
    this.errorCode,
    this.id,
    this.lastAccess,
    this.lastIpAddr,
    this.gcm,
    this.state,
    this.fullname,
    this.username,
    this.email,
    this.regtime,
    this.ipAddr,
    this.mobile,
    this.points,
    this.refer,
    this.refered,
    this.redeemedPoints,
    this.totalPoints,
  });

  factory Account.fromJson(Map<String, dynamic> json) => 
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
