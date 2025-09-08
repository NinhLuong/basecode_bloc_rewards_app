// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasksParameters _$TasksParametersFromJson(Map<String, dynamic> json) =>
    TasksParameters(
      accessToken: json['accessToken'] as String?,
      accountId: json['accountId'] as String?,
      username: json['user'] as String?,
      clientId: (json['clientId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TasksParametersToJson(TasksParameters instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'user': instance.username,
      'clientId': instance.clientId,
    };
