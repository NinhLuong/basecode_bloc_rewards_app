// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteAccountParameters _$DeleteAccountParametersFromJson(
  Map<String, dynamic> json,
) => _DeleteAccountParameters(
  accessToken: json['accessToken'] as String,
  accountId: json['accountId'] as String,
  clientId: (json['clientId'] as num).toInt(),
);

Map<String, dynamic> _$DeleteAccountParametersToJson(
  _DeleteAccountParameters instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accountId': instance.accountId,
  'clientId': instance.clientId,
};
