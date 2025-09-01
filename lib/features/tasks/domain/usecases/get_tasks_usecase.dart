import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/data/errors/failure.dart';
import 'package:magic_rewards/core/domain/usecases/usecase.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

class GetTasksUsecase extends UseCase<TasksEntity, TasksParameters> {
  final TasksRepository tasksRepository;

  GetTasksUsecase(this.tasksRepository);

  @override
  Future<Either<Failure, TasksEntity>> call({required TasksParameters params}) async {
    return await tasksRepository.getTasks(params);
  }
}
