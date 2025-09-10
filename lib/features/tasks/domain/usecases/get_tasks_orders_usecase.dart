import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

@lazySingleton
class GetTasksOrdersUseCase extends UseCase<TasksOrdersEntity, TasksOrdersParameters> {
  final TasksRepository tasksRepository;

  GetTasksOrdersUseCase(this.tasksRepository);

  @override
  Future<Either<Failure, TasksOrdersEntity>> call({required TasksOrdersParameters params}) async {
    return await tasksRepository.getTasksOrders(params);
  }
}
