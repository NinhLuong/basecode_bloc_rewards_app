import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/core/domain/usecases/base_usecase.dart';
import 'package:bloc_rewards/features/live_offers/domain/entities/live_offer_entity.dart';
import 'package:bloc_rewards/features/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:bloc_rewards/features/live_offers/domain/repository/live_offers_repository.dart';

@lazySingleton
class GetLiveOffersUseCase extends UseCase<LiveOffersEntity, GetLiveOffersParameters> {
  final LiveOffersRepository liveOffersRepository;

  GetLiveOffersUseCase(this.liveOffersRepository);

  @override
  Future<Either<Failure, LiveOffersEntity>> call({required GetLiveOffersParameters params}) async {
    return await liveOffersRepository.getLiveOffers(params);
  }
}
