// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckEmailModel _$CheckEmailModelFromJson(Map<String, dynamic> json) =>
    _CheckEmailModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      errorMessage: json['error_message'] as String?,
      verifyCode: json['verify_code'] as String?,
    );

Map<String, dynamic> _$CheckEmailModelToJson(_CheckEmailModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'error_message': instance.errorMessage,
      'verify_code': instance.verifyCode,
    };
