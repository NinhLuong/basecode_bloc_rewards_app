import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'home_entity.g.dart';

@immutable
@JsonSerializable()
class HomeEntity extends BaseEntity {
  @JsonKey(name: 'balance')
  final String balance;
  
  @JsonKey(name: 'offerWalls')
  final List<OfferWallEntity> offerWalls;

  HomeEntity({
    required this.offerWalls, 
    required this.balance,
  });

  factory HomeEntity.fromJson(Map<String, dynamic> json) => 
      _$HomeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$HomeEntityToJson(this);

  @override
  List<Object?> get props => [offerWalls, balance];
}

@immutable
@JsonSerializable()
class OfferWallEntity extends BaseEntity {
  @JsonKey(name: 'id')
  final String id;
  
  @JsonKey(name: 'title')
  final String title;
  
  @JsonKey(name: 'subtitle')
  final String? subtitle;
  
  @JsonKey(name: 'url')
  final String url;
  
  @JsonKey(name: 'type')
  final String type;
  
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;
  
  @JsonKey(name: 'position')
  final String? position;
  
  @JsonKey(name: 'status')
  final String? status;

  OfferWallEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.url,
    required this.type,
    required this.thumbnail,
    required this.position,
    required this.status,
  });

  factory OfferWallEntity.fromJson(Map<String, dynamic> json) => 
      _$OfferWallEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OfferWallEntityToJson(this);

  @override
  List<Object?> get props =>
      [id, title, subtitle, url, type, thumbnail, position, status];
}
