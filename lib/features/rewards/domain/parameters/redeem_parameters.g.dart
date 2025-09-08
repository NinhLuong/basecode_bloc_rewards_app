// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemParameters _$RedeemParametersFromJson(Map<String, dynamic> json) =>
    RedeemParameters(
      name: json['name'] as String,
      value: json['value'] as String,
      clientId: (json['clientId'] as num?)?.toInt(),
      accountId: json['accountId'] as String?,
      accessToken: json['accessToken'] as String?,
      username: json['user'] as String?,
      devName: json['dev_name'] as String?,
      devMan: json['dev_man'] as String?,
    );

Map<String, dynamic> _$RedeemParametersToJson(RedeemParameters instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
      'user': instance.username,
      'name': instance.name,
      'value': instance.value,
      'dev_name': instance.devName,
      'dev_man': instance.devMan,
    };
