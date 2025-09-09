import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/config/enums/order_status.dart';

part 'tasks_orders_entity.freezed.dart';

@freezed
abstract class TasksOrdersEntity extends BaseEntity with _$TasksOrdersEntity {
  const TasksOrdersEntity._();

  const factory TasksOrdersEntity({
    required List<TaskOrderEntity> orders,
  }) = _TasksOrdersEntity;

}

@freezed
abstract class TaskOrderEntity extends BaseEntity with _$TaskOrderEntity {
  const TaskOrderEntity._();

  const factory TaskOrderEntity({
    required String taskName,
    required DateTime timestamp,
    required String price,
    required OrderStatus status,
  }) = _TaskOrderEntity;

}
