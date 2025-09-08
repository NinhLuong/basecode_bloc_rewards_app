// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_users_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopUsersParameters _$TopUsersParametersFromJson(Map<String, dynamic> json) =>
    TopUsersParameters(
      accessToken: json['accessToken'] as String?,
      accountId: json['accountId'] as String?,
      username: json['user'] as String?,
      clientId: (json['clientId'] as num?)?.toInt(),
      halfMonth: json['halfMonth'] as bool? ?? false,
    );

Map<String, dynamic> _$TopUsersParametersToJson(TopUsersParameters instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'user': instance.username,
      'clientId': instance.clientId,
      'halfMonth': instance.halfMonth,
    };
