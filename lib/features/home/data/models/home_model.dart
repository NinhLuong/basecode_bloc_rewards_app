import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/home/domain/entities/home_entity.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel extends BaseModel<HomeEntity> with _$HomeModel {
  const HomeModel._();

  const factory HomeModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'balance') String? balance,
    @JsonKey(name: 'offerwalls') List<OfferWallModel>? offerWalls,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);

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

@freezed
abstract class OfferWallModel extends BaseModel<OfferWallEntity> with _$OfferWallModel {
  const OfferWallModel._();

  const factory OfferWallModel({
    @JsonKey(name: 'offer_id') String? id,
    @JsonKey(name: 'offer_title') String? title,
    @JsonKey(name: 'offer_subtitle') String? subtitle,
    @JsonKey(name: 'offer_url') String? url,
    @JsonKey(name: 'offer_type') String? type,
    @JsonKey(name: 'offer_points') String? points,
    @JsonKey(name: 'offer_featured') bool? featured,
    @JsonKey(name: 'offer_thumbnail') String? thumbnail,
    @JsonKey(name: 'offer_position') String? position,
    @JsonKey(name: 'offer_status') String? status,
  }) = _OfferWallModel;

  factory OfferWallModel.fromJson(Map<String, dynamic> json) =>
      _$OfferWallModelFromJson(json);

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
