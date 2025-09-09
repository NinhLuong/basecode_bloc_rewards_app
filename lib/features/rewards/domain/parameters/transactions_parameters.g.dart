// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionsParameters _$TransactionsParametersFromJson(
  Map<String, dynamic> json,
) => _TransactionsParameters(
  clientId: (json['clientId'] as num).toInt(),
  accountId: json['accountId'] as String,
  accessToken: json['accessToken'] as String,
  username: json['user'] as String,
);

Map<String, dynamic> _$TransactionsParametersToJson(
  _TransactionsParameters instance,
) => <String, dynamic>{
  'clientId': instance.clientId,
  'accountId': instance.accountId,
  'accessToken': instance.accessToken,
  'user': instance.username,
};
