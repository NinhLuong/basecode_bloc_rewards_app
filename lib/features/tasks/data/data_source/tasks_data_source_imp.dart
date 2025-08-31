import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/tasks/data/data_source/tasks_data_source.dart';
import 'package:magic_rewards/features/tasks/data/models/reserve_comment_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_orders_model.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/dmain/parameters/tasks_parameters.dart';

class TasksRemoteDataSourceImp extends TasksDataSource {
  @override
  Future<TasksModel> getTasks(TasksParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.tasks, data: parameters.toJson());
    return TasksModel.fromJson(appResponse.data);
  }

  @override
  Future<ReserveCommentModel> reserveComment(
      ReserveCommentParameters parameters) async {
    AppResponse appResponse = await ApiServices()
        .post(ApisUrls.reserveComment, data: parameters.toJson());
    return ReserveCommentModel.fromJson(appResponse.data);
  }

  @override
  Future<void> addTaskOrder(AddTaskOrderParameters parameters) async {
    var formData = await parameters.toJson();
    await ApiServices().post(
      ApisUrls.addTaskOrder,
      data: formData,
    );
  }

  @override
  Future<TasksOrdersModel> getTasksOrders(
      TasksOrdersParameters parameters) async {
    AppResponse appResponse = await ApiServices()
        .post(ApisUrls.tasksOrders, data: parameters.toJson());
    return TasksOrdersModel.fromJson(appResponse.data);
  }
}
