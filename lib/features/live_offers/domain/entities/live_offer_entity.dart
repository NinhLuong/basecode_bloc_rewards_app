import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class LiveOffersEntity extends BaseEntity {
  final List<LiveOfferEntity> liveOffers;

  const LiveOffersEntity({required this.liveOffers});

}

class LiveOfferEntity extends BaseEntity {
  final String id;
  final String username;
  final String points;
  final DateTime? date;
  final String type;

  const LiveOfferEntity(
      {required this.id,
      required this.username,
      required this.points,
      required this.date,
      required this.type});

}
