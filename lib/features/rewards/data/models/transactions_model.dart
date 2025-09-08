import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/config/utils/app_date_formatter.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';

part 'transactions_model.g.dart';

@immutable
@JsonSerializable()
class TransactionsModel extends BaseModel<TransactionsEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'user')
  final String? user;
  
  @JsonKey(name: 'transactions')
  final List<Transaction>? transactions;

  const TransactionsModel({
    this.error,
    this.errorCode,
    this.user,
    this.transactions,
  });

  factory TransactionsModel.fromJson(Map<String, dynamic> json) => 
      _$TransactionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionsModelToJson(this);

  @override
  TransactionsEntity toEntity() {
    return TransactionsEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@immutable
@JsonSerializable()
class Transaction extends BaseModel<TransactionEntity> {
  @JsonKey(name: 'tn_id')
  final String? tnId;
  
  @JsonKey(name: 'tn_type')
  final String? tnType;
  
  @JsonKey(name: 'tn_name')
  final String? tnName;
  
  @JsonKey(name: 'tn_points')
  final String? tnPoints;
  
  @JsonKey(name: 'tn_date')
  final String? tnDate;
  
  @JsonKey(name: 'tn_status')
  final String? tnStatus;

  const Transaction({
    this.tnId,
    this.tnType,
    this.tnName,
    this.tnPoints,
    this.tnDate,
    this.tnStatus,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => 
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  TransactionEntity toEntity() {
    return TransactionEntity(
      id: tnId ?? '',
      name: tnName ?? '',
      points: tnPoints ?? '',
      date: DataFormatter().fromLinuxTime(tnDate),
    );
  }
}
