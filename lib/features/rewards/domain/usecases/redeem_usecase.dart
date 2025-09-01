import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/usecase.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

class RedeemUsecase extends UseCase<void, RedeemParameters> {
  final RewardsRepository rewardsRepository;

  RedeemUsecase(this.rewardsRepository);

  @override
  Future<Either<Failure, void>> call({required RedeemParameters params}) async {
    return await rewardsRepository.redeem(params);
  }
}
