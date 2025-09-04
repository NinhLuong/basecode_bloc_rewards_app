import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';

abstract class LiveOffersRepository {
  Future<Either<Failure, LiveOffersEntity>> getLiveOffers(
      GetLiveOffersParameters parameters);
}
