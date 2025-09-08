import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/shared/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/config/utils/app_date_formatter.dart';
import 'package:magic_rewards/features/rewards/domain/entities/orders_entity.dart';

part 'orders_model.g.dart';

@immutable
@JsonSerializable()
class OrdersModel extends BaseModel<OrdersEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'user')
  final String? user;
  
  @JsonKey(name: 'transactions')
  final List<Order>? transactions;

  const OrdersModel({
    this.error,
    this.errorCode,
    this.user,
    this.transactions,
  });

  factory OrdersModel.fromJson(Map<String, dynamic> json) => 
      _$OrdersModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersModelToJson(this);

  @override
  OrdersEntity toEntity() {
    return OrdersEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@immutable
@JsonSerializable()
class Order extends BaseModel<OrderEntity> {
  @JsonKey(name: 'tn_id')
  final String? tnId;
  
  @JsonKey(name: 'tn_type')
  final String? tnType;
  
  @JsonKey(name: 'tn_name')
  final String? tnName;
  
  @JsonKey(name: 'tn_points')
  final String? tnPoints;
  
  @JsonKey(name: 'tn_to')
  final String? tnTo;
  
  @JsonKey(name: 'tn_date')
  final String? tnDate;
  
  @JsonKey(name: 'tn_status')
  final String? tnStatus;

  const Order({
    this.tnId,
    this.tnType,
    this.tnName,
    this.tnPoints,
    this.tnTo,
    this.tnDate,
    this.tnStatus,
  });

  factory Order.fromJson(Map<String, dynamic> json) => 
      _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

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
