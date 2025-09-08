// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_offers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LiveOffersModel _$LiveOffersModelFromJson(Map<String, dynamic> json) =>
    LiveOffersModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      liveOffers: (json['live_offers'] as List<dynamic>?)
          ?.map((e) => LiveOffers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LiveOffersModelToJson(LiveOffersModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'live_offers': instance.liveOffers,
    };

LiveOffers _$LiveOffersFromJson(Map<String, dynamic> json) => LiveOffers(
  id: json['id'] as String?,
  username: json['username'] as String?,
  points: json['points'] as String?,
  type: json['type'] as String?,
  date: json['date'] as String?,
);

Map<String, dynamic> _$LiveOffersToJson(LiveOffers instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'points': instance.points,
      'type': instance.type,
      'date': instance.date,
    };
