// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_users_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopUsersParameters _$TopUsersParametersFromJson(Map<String, dynamic> json) =>
    _TopUsersParameters(
      accessToken: json['accessToken'] as String,
      accountId: json['accountId'] as String,
      username: json['user'] as String,
      clientId: (json['clientId'] as num).toInt(),
      halfMonthValue: (json['half_month'] as num).toInt(),
    );

Map<String, dynamic> _$TopUsersParametersToJson(_TopUsersParameters instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'user': instance.username,
      'clientId': instance.clientId,
      'half_month': instance.halfMonthValue,
    };
