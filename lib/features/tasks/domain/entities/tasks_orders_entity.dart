import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/config/enums/order_status.dart';

class TasksOrdersEntity extends BaseEntity {
  const TasksOrdersEntity({required this.orders});

  final List<TaskOrderEntity> orders;

  @override
  List<Object?> get props => [orders];
}

class TaskOrderEntity extends BaseEntity {
  const TaskOrderEntity({
    required this.taskName,
    required this.timestamp,
    required this.price,
    required this.status,
  });

  final String taskName;
  final DateTime timestamp;
  final String price;
  final OrderStatus status;

  @override
  List<Object?> get props => [taskName, timestamp, price, status];
}
