import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';

part 'home_model.g.dart';

@immutable
@JsonSerializable()
class HomeModel extends BaseModel<HomeEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'balance')
  final String? balance;
  
  @JsonKey(name: 'offerwalls')
  final List<OfferWallModel>? offerWalls;

  HomeModel({
    this.error,
    this.errorCode,
    this.balance,
    this.offerWalls,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => 
      _$HomeModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);

  //
  // List<OfferWallModel> get activeOfferWalls {
  //   return offerWalls?.where((element) => element.status == AppConstants.activeOfferWall && element.type != AppConstants.offerWallRedeemType && element.type != AppConstants.offerWallTransactionsType).toList() ?? [];
  // }

  @override
  HomeEntity toEntity() {
    return HomeEntity(
        offerWalls: (offerWalls?.map((e) => e.toEntity()).toList() ?? []),
        balance: balance ?? '0');
  }
}

@immutable
@JsonSerializable()
class OfferWallModel extends BaseModel<OfferWallEntity> {
  @JsonKey(name: 'offer_id')
  final String? id;
  
  @JsonKey(name: 'offer_title')
  final String? title;
  
  @JsonKey(name: 'offer_subtitle')
  final String? subtitle;
  
  @JsonKey(name: 'offer_url')
  final String? url;
  
  @JsonKey(name: 'offer_type')
  final String? type;
  
  @JsonKey(name: 'offer_points')
  final String? points;
  
  @JsonKey(name: 'offer_featured')
  final bool? featured;
  
  @JsonKey(name: 'offer_thumbnail')
  final String? thumbnail;
  
  @JsonKey(name: 'offer_position')
  final String? position;
  
  @JsonKey(name: 'offer_status')
  final String? status;

  OfferWallModel({
    this.id,
    this.title,
    this.subtitle,
    this.url,
    this.type,
    this.points,
    this.featured,
    this.thumbnail,
    this.position,
    this.status,
  });

  factory OfferWallModel.fromJson(Map<String, dynamic> json) => 
      _$OfferWallModelFromJson(json);

  Map<String, dynamic> toJson() => _$OfferWallModelToJson(this);

  @override
  OfferWallEntity toEntity() {
    return OfferWallEntity(
        id: id!,
        title: title ?? '',
        subtitle: subtitle,
        url: url ?? '',
        type: type ?? '',
        thumbnail: thumbnail,
        position: position,
        status: status);
  }
}
