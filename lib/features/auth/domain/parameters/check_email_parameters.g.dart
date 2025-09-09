// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckEmailParameters _$CheckEmailParametersFromJson(
  Map<String, dynamic> json,
) => _CheckEmailParameters(
  email: json['email'] as String,
  clientId: (json['clientId'] as num?)?.toInt() ?? AppConstants.clientId,
);

Map<String, dynamic> _$CheckEmailParametersToJson(
  _CheckEmailParameters instance,
) => <String, dynamic>{'email': instance.email, 'clientId': instance.clientId};
