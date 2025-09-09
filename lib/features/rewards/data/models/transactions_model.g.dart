// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionsModel _$TransactionsModelFromJson(Map<String, dynamic> json) =>
    _TransactionsModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      user: json['user'] as String?,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TransactionsModelToJson(_TransactionsModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'user': instance.user,
      'transactions': instance.transactions,
    };

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  tnId: json['tn_id'] as String?,
  tnType: json['tn_type'] as String?,
  tnName: json['tn_name'] as String?,
  tnPoints: json['tn_points'] as String?,
  tnDate: json['tn_date'] as String?,
  tnStatus: json['tn_status'] as String?,
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'tn_id': instance.tnId,
      'tn_type': instance.tnType,
      'tn_name': instance.tnName,
      'tn_points': instance.tnPoints,
      'tn_date': instance.tnDate,
      'tn_status': instance.tnStatus,
    };
