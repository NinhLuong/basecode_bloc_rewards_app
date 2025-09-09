// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'data': instance.data,
    };

_ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) => _ProfileData(
  balance: json['balance'] as String?,
  redeemedPoints: json['redeemed_points'] as String?,
  totalPoints: json['total_points'] as String?,
);

Map<String, dynamic> _$ProfileDataToJson(_ProfileData instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'redeemed_points': instance.redeemedPoints,
      'total_points': instance.totalPoints,
    };
