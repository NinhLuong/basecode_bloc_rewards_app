import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel extends BaseModel<UserEntity> with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'accountId') String? accountId,
    @JsonKey(name: 'account') List<Account>? account,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

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

extension UserModelExtension on UserModel {
  UserModel fromEntity(UserEntity entity) {
    return UserModel(
      accessToken: entity.accessToken,
      accountId: entity.accountId,
      account: [
        Account(
          email: entity.email,
          points: entity.points,
          redeemedPoints: entity.redeemedPoints,
          username: entity.userName,
        ),
      ],
    );
  }
}

@freezed
abstract class Account with _$Account {
  const factory Account({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'last_access') String? lastAccess,
    @JsonKey(name: 'last_ip_addr') String? lastIpAddr,
    @JsonKey(name: 'gcm') String? gcm,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'fullname') String? fullname,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'regtime') String? regtime,
    @JsonKey(name: 'ip_addr') String? ipAddr,
    @JsonKey(name: 'mobile') String? mobile,
    @JsonKey(name: 'points') String? points,
    @JsonKey(name: 'refer') String? refer,
    @JsonKey(name: 'refered') String? refered,
    @JsonKey(name: 'redeemed_points') String? redeemedPoints,
    @JsonKey(name: 'total_points') String? totalPoints,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
