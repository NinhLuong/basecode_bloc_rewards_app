// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    LoginParameters(
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: (json['clientId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginParametersToJson(LoginParameters instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'clientId': instance.clientId,
    };
