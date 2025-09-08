// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAccountParameters _$DeleteAccountParametersFromJson(
  Map<String, dynamic> json,
) => DeleteAccountParameters(
  accessToken: json['accessToken'] as String?,
  accountId: json['accountId'] as String?,
  clientId: (json['clientId'] as num?)?.toInt(),
);

Map<String, dynamic> _$DeleteAccountParametersToJson(
  DeleteAccountParameters instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accountId': instance.accountId,
  'clientId': instance.clientId,
};
