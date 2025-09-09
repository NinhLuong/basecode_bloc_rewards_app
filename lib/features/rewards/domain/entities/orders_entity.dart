import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';
import 'package:magic_rewards/config/enums/order_status.dart';

part 'orders_entity.freezed.dart';

@freezed
abstract class OrdersEntity extends BaseEntity with _$OrdersEntity {
  const OrdersEntity._();

  const factory OrdersEntity({
    required List<OrderEntity> orders,
  }) = _OrdersEntity;

}

@freezed
abstract class OrderEntity extends BaseEntity with _$OrderEntity {
  const OrderEntity._();

  const factory OrderEntity({
    required String id,
    required String name,
    required String points,
    required DateTime date,
    required String wallet,
    required OrderStatus status,
  }) = _OrderEntity;

}
