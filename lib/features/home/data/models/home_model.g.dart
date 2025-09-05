// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
  error: json['error'] as bool?,
  errorCode: (json['error_code'] as num?)?.toInt(),
  balance: json['balance'] as String?,
  offerWalls: (json['offerwalls'] as List<dynamic>?)
      ?.map((e) => OfferWallModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
  'error': instance.error,
  'error_code': instance.errorCode,
  'balance': instance.balance,
  'offerwalls': instance.offerWalls,
};

OfferWallModel _$OfferWallModelFromJson(Map<String, dynamic> json) =>
    OfferWallModel(
      id: json['offer_id'] as String?,
      title: json['offer_title'] as String?,
      subtitle: json['offer_subtitle'] as String?,
      url: json['offer_url'] as String?,
      type: json['offer_type'] as String?,
      points: json['offer_points'] as String?,
      featured: json['offer_featured'] as bool?,
      thumbnail: json['offer_thumbnail'] as String?,
      position: json['offer_position'] as String?,
      status: json['offer_status'] as String?,
    );

Map<String, dynamic> _$OfferWallModelToJson(OfferWallModel instance) =>
    <String, dynamic>{
      'offer_id': instance.id,
      'offer_title': instance.title,
      'offer_subtitle': instance.subtitle,
      'offer_url': instance.url,
      'offer_type': instance.type,
      'offer_points': instance.points,
      'offer_featured': instance.featured,
      'offer_thumbnail': instance.thumbnail,
      'offer_position': instance.position,
      'offer_status': instance.status,
    };
