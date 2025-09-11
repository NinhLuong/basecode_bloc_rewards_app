import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';

part 'tasks_model.freezed.dart';
part 'tasks_model.g.dart';

@freezed
abstract class TasksModel extends BaseModel<TasksEntity> with _$TasksModel {
  const TasksModel._();

  const factory TasksModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'tasks') List<TaskModel>? tasks,
  }) = _TasksModel;

  factory TasksModel.fromJson(Map<String, dynamic> json) =>
      _$TasksModelFromJson(json);

  @override
  TasksEntity toEntity() {
    return TasksEntity(tasks: tasks?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@freezed
abstract class TaskModel extends BaseModel<TaskEntity> with _$TaskModel {
  const TaskModel._();

  const factory TaskModel({
    @JsonKey(name: 'task_id') String? taskId,
    @JsonKey(name: 'task_title') String? taskTitle,
    @JsonKey(name: 'task_sub_title') String? taskSubTitle,
    @JsonKey(name: 'task_description') String? taskDescription,
    @JsonKey(name: 'task_image') String? taskImage,
    @JsonKey(name: 'task_url') String? taskUrl,
    @JsonKey(name: 'task_price') String? taskPrice,
    @JsonKey(name: 'task_status') String? taskStatus,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  @override
  TaskEntity toEntity() {
    return TaskEntity(
      id: taskId!,
      title: taskTitle ?? '',
      subTitle: taskSubTitle ?? '',
      description: taskDescription ?? '',
      image: taskImage ?? '',
      url: taskUrl ?? '',
      price: taskPrice ?? '0',
    );
  }
}
