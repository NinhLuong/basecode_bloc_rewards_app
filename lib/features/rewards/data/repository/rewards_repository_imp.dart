import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/rewards/data/datasources/rewards_datasource.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

@LazySingleton(as: RewardsRepository)
class RewardsRepositoryImp extends RewardsRepository {
  final RewardsDataSource rewardsDataSource;

  RewardsRepositoryImp(this.rewardsDataSource);

  @override
  Future<Either<Failure, PayoutsEntity>> getPayouts(
      PayoutsParameters parameters) {
    return ErrorsHandler.handleEither(
        () => rewardsDataSource.getPayouts(parameters));
  }

  @override
  Future<Either<Failure, void>> redeem(RedeemParameters parameters) async {
    try {
      final result = await rewardsDataSource.redeem(parameters);
      return Right(result);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, OrdersEntity>> getOrders(OrdersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => rewardsDataSource.getOrders(parameters));
  }

  @override
  Future<Either<Failure, TransactionsEntity>> getTransactions(
      TransactionsParameters parameters) {
    return ErrorsHandler.handleEither(
        () => rewardsDataSource.getTransactions(parameters));
  }
}
