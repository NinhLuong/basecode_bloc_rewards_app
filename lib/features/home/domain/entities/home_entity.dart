import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class HomeEntity extends BaseEntity {
  final String balance;
  final List<OfferWallEntity> offerWalls;

  HomeEntity({required this.offerWalls, required this.balance});

  @override
  // TODO: implement props
  List<Object?> get props => [offerWalls, balance];
}

class OfferWallEntity extends BaseEntity {
  final String id;
  final String title;
  final String? subtitle;
  final String url;
  final String type;
  final String? thumbnail;
  final String? position;
  final String? status;

  OfferWallEntity(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.url,
      required this.type,
      required this.thumbnail,
      required this.position,
      required this.status});

  @override
  List<Object?> get props =>
      [id, title, subtitle, url, type, thumbnail, position, status];
}
