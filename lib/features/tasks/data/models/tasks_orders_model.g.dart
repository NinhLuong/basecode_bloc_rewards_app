// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TasksOrdersModel _$TasksOrdersModelFromJson(Map<String, dynamic> json) =>
    _TasksOrdersModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => TaskOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TasksOrdersModelToJson(_TasksOrdersModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'requests': instance.requests,
    };

_TaskOrderModel _$TaskOrderModelFromJson(Map<String, dynamic> json) =>
    _TaskOrderModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      id: json['id'] as String?,
      taskId: json['task_id'] as String?,
      taskName: json['task_name'] as String?,
      commentId: json['comment_id'] as String?,
      username: json['username'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      text: json['text'] as String?,
      image: json['image'] as String?,
      timestamp: json['timestamp'] as String?,
      price: json['price'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TaskOrderModelToJson(_TaskOrderModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'id': instance.id,
      'task_id': instance.taskId,
      'task_name': instance.taskName,
      'comment_id': instance.commentId,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'text': instance.text,
      'image': instance.image,
      'timestamp': instance.timestamp,
      'price': instance.price,
      'status': instance.status,
    };
