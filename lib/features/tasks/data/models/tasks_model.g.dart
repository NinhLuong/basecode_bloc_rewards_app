// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasksModel _$TasksModelFromJson(Map<String, dynamic> json) => _TasksModel(
  error: json['error'] as bool?,
  errorCode: (json['error_code'] as num?)?.toInt(),
  tasks: (json['tasks'] as List<dynamic>?)
      ?.map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TasksModelToJson(_TasksModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'tasks': instance.tasks,
    };

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  taskId: json['task_id'] as String?,
  taskTitle: json['task_title'] as String?,
  taskSubTitle: json['task_sub_title'] as String?,
  taskDescription: json['task_description'] as String?,
  taskImage: json['task_image'] as String?,
  taskUrl: json['task_url'] as String?,
  taskPrice: json['task_price'] as String?,
  taskStatus: json['task_status'] as String?,
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'task_title': instance.taskTitle,
      'task_sub_title': instance.taskSubTitle,
      'task_description': instance.taskDescription,
      'task_image': instance.taskImage,
      'task_url': instance.taskUrl,
      'task_price': instance.taskPrice,
      'task_status': instance.taskStatus,
    };
