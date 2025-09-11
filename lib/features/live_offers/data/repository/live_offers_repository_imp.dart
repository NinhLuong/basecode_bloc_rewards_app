import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/live_offers/data/datasources/live_offers_datasource.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:magic_rewards/features/live_offers/domain/repository/live_offers_repository.dart';

@LazySingleton(as: LiveOffersRepository)
class LiveOffersRepositoryImp extends LiveOffersRepository {
  final LiveOffersDataSource liveOffersDataSource;

  LiveOffersRepositoryImp(this.liveOffersDataSource);

  @override
  Future<Either<Failure, LiveOffersEntity>> getLiveOffers(
      GetLiveOffersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => liveOffersDataSource.getLiveOffers(parameters));
  }
}
