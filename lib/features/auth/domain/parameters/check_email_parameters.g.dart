// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckEmailParameters _$CheckEmailParametersFromJson(
  Map<String, dynamic> json,
) => CheckEmailParameters(
  email: json['email'] as String,
  clientId: (json['clientId'] as num?)?.toInt(),
);

Map<String, dynamic> _$CheckEmailParametersToJson(
  CheckEmailParameters instance,
) => <String, dynamic>{'email': instance.email, 'clientId': instance.clientId};
