import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:bloc_rewards/config/errors/failure.dart';
import 'package:bloc_rewards/core/domain/usecases/base_usecase.dart';
import 'package:bloc_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:bloc_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:bloc_rewards/features/rewards/domain/repository/rewards_repository.dart';

@lazySingleton
class GetOrdersUseCase extends UseCase<OrdersEntity, OrdersParameters> {
  final RewardsRepository rewardsRepository;

  GetOrdersUseCase(this.rewardsRepository);

  @override
  Future<Either<Failure, OrdersEntity>> call({required OrdersParameters params}) async {
    return await rewardsRepository.getOrders(params);
  }
}
