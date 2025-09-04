import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/features/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/features/rewards/domain/repository/rewards_repository.dart';

class GetOrdersUsecase extends UseCase<OrdersEntity, OrdersParameters> {
  final RewardsRepository rewardsRepository;

  GetOrdersUsecase(this.rewardsRepository);

  @override
  Future<Either<Failure, OrdersEntity>> call({required OrdersParameters params}) async {
    return await rewardsRepository.getOrders(params);
  }
}
