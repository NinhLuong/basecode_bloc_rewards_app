import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

@lazySingleton
class GetTransactionsUseCase extends UseCase<TransactionsEntity, TransactionsParameters> {
  final RewardsRepository rewardsRepository;

  GetTransactionsUseCase(this.rewardsRepository);

  @override
  Future<Either<Failure, TransactionsEntity>> call({required TransactionsParameters params}) async {
    return await rewardsRepository.getTransactions(params);
  }
}
