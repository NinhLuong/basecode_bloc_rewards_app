// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileParameters _$ProfileParametersFromJson(Map<String, dynamic> json) =>
    ProfileParameters(
      accessToken: json['accessToken'] as String?,
      accountId: json['accountId'] as String?,
      username: json['user'] as String?,
      clientId: (json['clientId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProfileParametersToJson(ProfileParameters instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'user': instance.username,
      'clientId': instance.clientId,
    };
