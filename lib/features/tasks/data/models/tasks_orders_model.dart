import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/shared/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/tasks/domain/entities/tasks_orders_entity.dart';

part 'tasks_orders_model.g.dart';

@immutable
@JsonSerializable()
class TasksOrdersModel extends BaseModel<TasksOrdersEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'requests')
  final List<TaskOrderModel>? requests;

  const TasksOrdersModel({
    this.error,
    this.errorCode,
    this.requests,
  });

  factory TasksOrdersModel.fromJson(Map<String, dynamic> json) => 
      _$TasksOrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$TasksOrdersModelToJson(this);

  @override
  TasksOrdersEntity toEntity() {
    return TasksOrdersEntity(
        orders: requests?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@immutable
@JsonSerializable()
class TaskOrderModel extends BaseModel<TaskOrderEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'id')
  final String? id;
  
  @JsonKey(name: 'task_id')
  final String? taskId;
  
  @JsonKey(name: 'task_name')
  final String? taskName;
  
  @JsonKey(name: 'comment_id')
  final String? commentId;
  
  @JsonKey(name: 'username')
  final String? username;
  
  @JsonKey(name: 'name')
  final String? name;
  
  @JsonKey(name: 'email')
  final String? email;
  
  @JsonKey(name: 'text')
  final String? text;
  
  @JsonKey(name: 'image')
  final String? image;
  
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  
  @JsonKey(name: 'price')
  final String? price;
  
  @JsonKey(name: 'status')
  final String? status;

  const TaskOrderModel({
    this.error,
    this.errorCode,
    this.id,
    this.taskId,
    this.taskName,
    this.commentId,
    this.username,
    this.name,
    this.email,
    this.text,
    this.image,
    this.timestamp,
    this.price,
    this.status,
  });

  factory TaskOrderModel.fromJson(Map<String, dynamic> json) => 
      _$TaskOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskOrderModelToJson(this);

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
