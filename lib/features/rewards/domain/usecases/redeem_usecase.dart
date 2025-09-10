import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

@lazySingleton
class RedeemUseCase extends UseCase<void, RedeemParameters> {
  final RewardsRepository rewardsRepository;

  RedeemUseCase(this.rewardsRepository);

  @override
  Future<Either<Failure, void>> call({required RedeemParameters params}) async {
    return await rewardsRepository.redeem(params);
  }
}
