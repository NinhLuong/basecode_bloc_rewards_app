// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) => _OrdersModel(
  error: json['error'] as bool?,
  errorCode: (json['error_code'] as num?)?.toInt(),
  user: json['user'] as String?,
  transactions: (json['transactions'] as List<dynamic>?)
      ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OrdersModelToJson(_OrdersModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'user': instance.user,
      'transactions': instance.transactions,
    };

_Order _$OrderFromJson(Map<String, dynamic> json) => _Order(
  tnId: json['tn_id'] as String?,
  tnType: json['tn_type'] as String?,
  tnName: json['tn_name'] as String?,
  tnPoints: json['tn_points'] as String?,
  tnTo: json['tn_to'] as String?,
  tnDate: json['tn_date'] as String?,
  tnStatus: json['tn_status'] as String?,
);

Map<String, dynamic> _$OrderToJson(_Order instance) => <String, dynamic>{
  'tn_id': instance.tnId,
  'tn_type': instance.tnType,
  'tn_name': instance.tnName,
  'tn_points': instance.tnPoints,
  'tn_to': instance.tnTo,
  'tn_date': instance.tnDate,
  'tn_status': instance.tnStatus,
};
