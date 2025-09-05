// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) => UserEntity(
  accessToken: json['accessToken'] as String?,
  accountId: json['accountId'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String,
  points: json['points'] as String,
  redeemedPoints: json['redeemedPoints'] as String,
  userName: json['userName'] as String,
);

Map<String, dynamic> _$UserEntityToJson(UserEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'userName': instance.userName,
      'email': instance.email,
      'fullName': instance.fullName,
      'points': instance.points,
      'redeemedPoints': instance.redeemedPoints,
    };
