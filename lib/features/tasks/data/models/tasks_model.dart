import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_entity.dart';

part 'tasks_model.g.dart';

@immutable
@JsonSerializable()
class TasksModel extends BaseModel<TasksEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'tasks')
  final List<TaskModel>? tasks;

  const TasksModel({
    this.error,
    this.errorCode,
    this.tasks,
  });

  factory TasksModel.fromJson(Map<String, dynamic> json) => 
      _$TasksModelFromJson(json);

  Map<String, dynamic> toJson() => _$TasksModelToJson(this);

  @override
  TasksEntity toEntity() {
    return TasksEntity(tasks: tasks?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@immutable
@JsonSerializable()
class TaskModel extends BaseModel<TaskEntity> {
  @JsonKey(name: 'task_id')
  final String? taskId;
  
  @JsonKey(name: 'task_title')
  final String? taskTitle;
  
  @JsonKey(name: 'task_sub_title')
  final String? taskSubTitle;
  
  @JsonKey(name: 'task_description')
  final String? taskDescription;
  
  @JsonKey(name: 'task_image')
  final String? taskImage;
  
  @JsonKey(name: 'task_url')
  final String? taskUrl;
  
  @JsonKey(name: 'task_price')
  final String? taskPrice;
  
  @JsonKey(name: 'task_status')
  final String? taskStatus;

  const TaskModel({
    this.taskId,
    this.taskTitle,
    this.taskSubTitle,
    this.taskDescription,
    this.taskImage,
    this.taskUrl,
    this.taskPrice,
    this.taskStatus,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => 
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);

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
