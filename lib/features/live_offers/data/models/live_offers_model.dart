import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/config/utils/app_date_formatter.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';

part 'live_offers_model.g.dart';

@immutable
@JsonSerializable()
class LiveOffersModel extends BaseModel<LiveOffersEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'live_offers')
  final List<LiveOffers>? liveOffers;

  const LiveOffersModel({
    this.error,
    this.errorCode,
    this.liveOffers,
  });

  factory LiveOffersModel.fromJson(Map<String, dynamic> json) => 
      _$LiveOffersModelFromJson(json);

  Map<String, dynamic> toJson() => _$LiveOffersModelToJson(this);

  @override
  LiveOffersEntity toEntity() {
    return LiveOffersEntity(
        liveOffers: liveOffers?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@immutable
@JsonSerializable()
class LiveOffers extends BaseModel<LiveOfferEntity> {
  @JsonKey(name: 'id')
  final String? id;
  
  @JsonKey(name: 'username')
  final String? username;
  
  @JsonKey(name: 'points')
  final String? points;
  
  @JsonKey(name: 'type')
  final String? type;
  
  @JsonKey(name: 'date')
  final String? date;

  const LiveOffers({
    this.id,
    this.username,
    this.points,
    this.type,
    this.date,
  });

  factory LiveOffers.fromJson(Map<String, dynamic> json) => 
      _$LiveOffersFromJson(json);

  Map<String, dynamic> toJson() => _$LiveOffersToJson(this);

  @override
  LiveOfferEntity toEntity() {
    return LiveOfferEntity(
        id: id!,
        username: username ?? "",
        points: points ?? "0",
        date: DataFormatter().fromLinuxTime(date),
        type: type ?? '');
  }
}
