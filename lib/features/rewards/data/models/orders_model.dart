import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/shared/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/config/utils/app_date_formatter.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';

part 'orders_model.freezed.dart';
part 'orders_model.g.dart';

@freezed
abstract class OrdersModel extends BaseModel<OrdersEntity> with _$OrdersModel {
  const OrdersModel._();

  const factory OrdersModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'user') String? user,
    @JsonKey(name: 'transactions') List<Order>? transactions,
  }) = _OrdersModel;

  factory OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersModelFromJson(json);

  @override
  OrdersEntity toEntity() {
    return OrdersEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@freezed
abstract class Order extends BaseModel<OrderEntity> with _$Order {
  const Order._();

  const factory Order({
    @JsonKey(name: 'tn_id') String? tnId,
    @JsonKey(name: 'tn_type') String? tnType,
    @JsonKey(name: 'tn_name') String? tnName,
    @JsonKey(name: 'tn_points') String? tnPoints,
    @JsonKey(name: 'tn_to') String? tnTo,
    @JsonKey(name: 'tn_date') String? tnDate,
    @JsonKey(name: 'tn_status') String? tnStatus,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) =>
      _$OrderFromJson(json);

  @override
  OrderEntity toEntity() {
    return OrderEntity(
      id: tnId ?? '',
      name: tnName ?? '',
      points: tnPoints ?? '',
      wallet: tnTo ?? '',
      date: DataFormatter().fromLinuxTime(tnDate),
      status: tnStatus!.toOrderStatus,
    );
  }
}
