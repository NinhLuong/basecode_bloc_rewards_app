// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    _LoginParameters(
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: (json['clientId'] as num?)?.toInt() ?? AppConstants.clientId,
    );

Map<String, dynamic> _$LoginParametersToJson(_LoginParameters instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'clientId': instance.clientId,
    };
