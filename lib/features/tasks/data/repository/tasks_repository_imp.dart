import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/errors_handler.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/tasks/data/datasources/tasks_datasource.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/repository/tasks_repository.dart';

@LazySingleton(as: TasksRepository)
class TasksRepositoryImp extends TasksRepository {
  final TasksDataSource tasksDataSource;

  TasksRepositoryImp(this.tasksDataSource);

  @override
  Future<Either<Failure, TasksEntity>> getTasks(TasksParameters parameters) {
    return ErrorsHandler.handleEither(
        () => tasksDataSource.getTasks(parameters));
  }

  @override
  Future<Either<Failure, ReserveCommentEntity>> reserveComment(
      ReserveCommentParameters parameters) {
    return ErrorsHandler.handleEither(
        () => tasksDataSource.reserveComment(parameters));
  }

  @override
  Future<Either<Failure, void>> addTaskOrder(
      AddTaskOrderParameters parameters) async {
    try {
      final result = await tasksDataSource.addTaskOrder(parameters);
      return Right(result);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, TasksOrdersEntity>> getTasksOrders(
      TasksOrdersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => tasksDataSource.getTasksOrders(parameters));
  }
}
