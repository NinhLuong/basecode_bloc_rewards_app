import 'package:injectable/injectable.dart';
import 'package:magic_rewards/config/secret/api/apis_urls.dart';
import 'package:magic_rewards/core/data/datasources/remote/api/api_services.dart';
import 'package:magic_rewards/core/data/repositories/app_response.dart';
import 'package:magic_rewards/features/tasks/data/datasources/tasks_datasource.dart';
import 'package:magic_rewards/features/tasks/data/models/reserve_comment_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_model.dart';
import 'package:magic_rewards/features/tasks/data/models/tasks_orders_model.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/features/tasks/domain/parameters/tasks_parameters.dart';

@LazySingleton(as: TasksDataSource)
class TasksRemoteDataSourceImp extends TasksDataSource {
  final ApiServices _apiServices;

  TasksRemoteDataSourceImp(this._apiServices);

  @override
  Future<TasksModel> getTasks(TasksParameters parameters) async {
    AppResponse appResponse =
        await _apiServices.post(ApisUrls.tasks, data: parameters.toJson());
    return TasksModel.fromJson(appResponse.data);
  }

  @override
  Future<ReserveCommentModel> reserveComment(
      ReserveCommentParameters parameters) async {
    AppResponse appResponse = await _apiServices
        .post(ApisUrls.reserveComment, data: parameters.toJson());
    return ReserveCommentModel.fromJson(appResponse.data);
  }

  @override
  Future<void> addTaskOrder(AddTaskOrderParameters parameters) async {
    var formData = await parameters.toJson();
    await _apiServices.post(
      ApisUrls.addTaskOrder,
      data: formData,
    );
  }

  @override
  Future<TasksOrdersModel> getTasksOrders(
      TasksOrdersParameters parameters) async {
    AppResponse appResponse = await _apiServices
        .post(ApisUrls.tasksOrders, data: parameters.toJson());
    return TasksOrdersModel.fromJson(appResponse.data);
  }
}
