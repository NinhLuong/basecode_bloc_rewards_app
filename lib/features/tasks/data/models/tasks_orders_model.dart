import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';

part 'tasks_orders_model.freezed.dart';
part 'tasks_orders_model.g.dart';

@freezed
abstract class TasksOrdersModel extends BaseModel<TasksOrdersEntity> with _$TasksOrdersModel {
  const TasksOrdersModel._();

  const factory TasksOrdersModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'requests') List<TaskOrderModel>? requests,
  }) = _TasksOrdersModel;

  factory TasksOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$TasksOrdersModelFromJson(json);

  @override
  TasksOrdersEntity toEntity() {
    return TasksOrdersEntity(
        orders: requests?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@freezed
abstract class TaskOrderModel extends BaseModel<TaskOrderEntity> with _$TaskOrderModel {
  const TaskOrderModel._();

  const factory TaskOrderModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'task_id') String? taskId,
    @JsonKey(name: 'task_name') String? taskName,
    @JsonKey(name: 'comment_id') String? commentId,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'price') String? price,
    @JsonKey(name: 'status') String? status,
  }) = _TaskOrderModel;

  factory TaskOrderModel.fromJson(Map<String, dynamic> json) =>
      _$TaskOrderModelFromJson(json);

  @override
  TaskOrderEntity toEntity() {
    return TaskOrderEntity(
      taskName: taskName ?? '',
      timestamp: DateTime.parse(timestamp!),
      price: price ?? '',
      status: status!.toOrderStatus,
    );
  }
}
