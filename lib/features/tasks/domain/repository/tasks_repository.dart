import 'package:dartz/dartz.dart';
import 'package:magic_rewards/config/errors/failure.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';

abstract class TasksRepository {
  Future<Either<Failure, TasksEntity>> getTasks(TasksParameters parameters);

  Future<Either<Failure, ReserveCommentEntity>> reserveComment(
      ReserveCommentParameters parameters);

  Future<Either<Failure, void>> addTaskOrder(AddTaskOrderParameters parameters);

  Future<Either<Failure, TasksOrdersEntity>> getTasksOrders(
      TasksOrdersParameters parameters);
}
