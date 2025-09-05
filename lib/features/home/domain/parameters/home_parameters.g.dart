// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeParameters _$HomeParametersFromJson(Map<String, dynamic> json) =>
    HomeParameters(
      clientId: (json['clientId'] as num?)?.toInt(),
      accountId: json['accountId'] as String?,
      accessToken: json['accessToken'] as String?,
      username: json['user'] as String?,
    );

Map<String, dynamic> _$HomeParametersToJson(HomeParameters instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
      'user': instance.username,
    };
