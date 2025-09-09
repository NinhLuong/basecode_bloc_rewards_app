import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'home_entity.freezed.dart';

@freezed
abstract class HomeEntity extends BaseEntity with _$HomeEntity {
  const HomeEntity._();
  
  const factory HomeEntity({
    required String balance,
    required List<OfferWallEntity> offerWalls,
  }) = _HomeEntity;

}

@freezed
abstract class OfferWallEntity extends BaseEntity with _$OfferWallEntity {
  const OfferWallEntity._();
  
  const factory OfferWallEntity({
    required String id,
    required String title,
    String? subtitle,
    required String url,
    required String type,
    String? thumbnail,
    String? position,
    String? status,
  }) = _OfferWallEntity;

}
