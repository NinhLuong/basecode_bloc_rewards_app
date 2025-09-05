// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeEntity _$HomeEntityFromJson(Map<String, dynamic> json) => HomeEntity(
  offerWalls: (json['offerWalls'] as List<dynamic>)
      .map((e) => OfferWallEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  balance: json['balance'] as String,
);

Map<String, dynamic> _$HomeEntityToJson(HomeEntity instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'offerWalls': instance.offerWalls,
    };

OfferWallEntity _$OfferWallEntityFromJson(Map<String, dynamic> json) =>
    OfferWallEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      url: json['url'] as String,
      type: json['type'] as String,
      thumbnail: json['thumbnail'] as String?,
      position: json['position'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$OfferWallEntityToJson(OfferWallEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'url': instance.url,
      'type': instance.type,
      'thumbnail': instance.thumbnail,
      'position': instance.position,
      'status': instance.status,
    };
