// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserve_comment_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReserveCommentParameters _$ReserveCommentParametersFromJson(
  Map<String, dynamic> json,
) => _ReserveCommentParameters(
  accessToken: json['accessToken'] as String,
  accountId: json['accountId'] as String,
  username: json['username'] as String,
  clientId: (json['clientId'] as num).toInt(),
  taskId: json['taskId'] as String,
);

Map<String, dynamic> _$ReserveCommentParametersToJson(
  _ReserveCommentParameters instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accountId': instance.accountId,
  'username': instance.username,
  'clientId': instance.clientId,
  'taskId': instance.taskId,
};
