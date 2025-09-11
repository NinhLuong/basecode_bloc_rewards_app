import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/config/utils/app_date_formatter.dart';
import 'package:magic_rewards/features/rewards/domain/entities/transactions_entity.dart';

part 'transactions_model.freezed.dart';
part 'transactions_model.g.dart';

@freezed
abstract class TransactionsModel extends BaseModel<TransactionsEntity> with _$TransactionsModel {
  const TransactionsModel._();

  const factory TransactionsModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'user') String? user,
    @JsonKey(name: 'transactions') List<Transaction>? transactions,
  }) = _TransactionsModel;

  factory TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsModelFromJson(json);

  @override
  TransactionsEntity toEntity() {
    return TransactionsEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

@freezed
abstract class Transaction extends BaseModel<TransactionEntity> with _$Transaction {
  const Transaction._();

  const factory Transaction({
    @JsonKey(name: 'tn_id') String? tnId,
    @JsonKey(name: 'tn_type') String? tnType,
    @JsonKey(name: 'tn_name') String? tnName,
    @JsonKey(name: 'tn_points') String? tnPoints,
    @JsonKey(name: 'tn_date') String? tnDate,
    @JsonKey(name: 'tn_status') String? tnStatus,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

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
