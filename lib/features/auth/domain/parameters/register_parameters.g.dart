// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterParameters _$RegisterParametersFromJson(Map<String, dynamic> json) =>
    RegisterParameters(
      email: json['email'] as String,
      userName: json['username'] as String,
      fullName: json['fullname'] as String,
      password: json['password'] as String,
      groupEmail: json['groupEmail'] as String,
      reg: json['reg'] as String?,
      clientId: (json['clientId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RegisterParametersToJson(RegisterParameters instance) =>
    <String, dynamic>{
      'username': instance.userName,
      'password': instance.password,
      'fullname': instance.fullName,
      'email': instance.email,
      'groupEmail': instance.groupEmail,
      'reg': instance.reg,
      'clientId': instance.clientId,
    };
