import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/base_usecase.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

class AddTaskOrderUsecase extends UseCase<void, AddTaskOrderParameters> {
  final TasksRepository tasksRepository;

  AddTaskOrderUsecase(this.tasksRepository);

  @override
  Future<Either<Failure, void>> call({required AddTaskOrderParameters params}) async {
    return await tasksRepository.addTaskOrder(params);
  }
}
