// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_orders_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasksOrdersParameters _$TasksOrdersParametersFromJson(
  Map<String, dynamic> json,
) => _TasksOrdersParameters(
  accessToken: json['accessToken'] as String,
  accountId: json['accountId'] as String,
  username: json['user'] as String,
  clientId: (json['clientId'] as num).toInt(),
);

Map<String, dynamic> _$TasksOrdersParametersToJson(
  _TasksOrdersParameters instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accountId': instance.accountId,
  'user': instance.username,
  'clientId': instance.clientId,
};
