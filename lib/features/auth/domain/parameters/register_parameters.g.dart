// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterParameters _$RegisterParametersFromJson(Map<String, dynamic> json) =>
    _RegisterParameters(
      email: json['email'] as String,
      userName: json['username'] as String,
      fullName: json['fullname'] as String,
      password: json['password'] as String,
      groupEmail: json['groupEmail'] as String,
      reg: json['reg'] as String? ?? AppConstants.reg,
      clientId: (json['clientId'] as num?)?.toInt() ?? AppConstants.clientId,
    );

Map<String, dynamic> _$RegisterParametersToJson(_RegisterParameters instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.userName,
      'fullname': instance.fullName,
      'password': instance.password,
      'groupEmail': instance.groupEmail,
      'reg': instance.reg,
      'clientId': instance.clientId,
    };
