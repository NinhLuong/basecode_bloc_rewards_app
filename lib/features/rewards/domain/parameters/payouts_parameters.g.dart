// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payouts_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayoutsParameters _$PayoutsParametersFromJson(Map<String, dynamic> json) =>
    _PayoutsParameters(
      accessToken: json['accessToken'] as String,
      accountId: json['accountId'] as String,
      username: json['user'] as String,
      clientId: (json['clientId'] as num).toInt(),
    );

Map<String, dynamic> _$PayoutsParametersToJson(_PayoutsParameters instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'user': instance.username,
      'clientId': instance.clientId,
    };
