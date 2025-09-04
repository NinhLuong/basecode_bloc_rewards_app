import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/transactions_parameters.dart';

abstract class RewardsRepository {
  Future<Either<Failure, PayoutsEntity>> getPayouts(
      PayoutsParameters parameters);

  Future<Either<Failure, void>> redeem(RedeemParameters parameters);

  Future<Either<Failure, OrdersEntity>> getOrders(OrdersParameters parameters);

  Future<Either<Failure, TransactionsEntity>> getTransactions(
      TransactionsParameters parameters);
}
