// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersParameters _$OrdersParametersFromJson(Map<String, dynamic> json) =>
    OrdersParameters(
      clientId: (json['clientId'] as num?)?.toInt(),
      accountId: json['accountId'] as String?,
      accessToken: json['accessToken'] as String?,
      username: json['user'] as String?,
    );

Map<String, dynamic> _$OrdersParametersToJson(OrdersParameters instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'accountId': instance.accountId,
      'accessToken': instance.accessToken,
      'user': instance.username,
    };
