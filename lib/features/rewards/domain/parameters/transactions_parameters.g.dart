// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsParameters _$TransactionsParametersFromJson(
  Map<String, dynamic> json,
) => TransactionsParameters(
  clientId: (json['clientId'] as num?)?.toInt(),
  accountId: json['accountId'] as String?,
  accessToken: json['accessToken'] as String?,
  username: json['user'] as String?,
);

Map<String, dynamic> _$TransactionsParametersToJson(
  TransactionsParameters instance,
) => <String, dynamic>{
  'clientId': instance.clientId,
  'accountId': instance.accountId,
  'accessToken': instance.accessToken,
  'user': instance.username,
};
