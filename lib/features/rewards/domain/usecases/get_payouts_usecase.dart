import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

@lazySingleton
class GetPayoutsUseCase extends UseCase<PayoutsEntity, PayoutsParameters> {
  final RewardsRepository rewardsRepository;

  GetPayoutsUseCase(this.rewardsRepository);

  @override
  Future<Either<Failure, PayoutsEntity>> call({required PayoutsParameters params}) async {
    return await rewardsRepository.getPayouts(params);
  }
}
