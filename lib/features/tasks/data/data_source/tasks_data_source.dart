import 'package:magic_rewards/features/tasks/data/models/reserve_comment_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_orders_model.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/tasks_parameters.dart';

abstract class TasksDataSource {
  Future<TasksModel> getTasks(TasksParameters parameters);

  Future<ReserveCommentModel> reserveComment(
      ReserveCommentParameters parameters);

  Future<void> addTaskOrder(AddTaskOrderParameters parameters);

  Future<TasksOrdersModel> getTasksOrders(TasksOrdersParameters parameters);
}
