import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'transactions_entity.freezed.dart';

@freezed
abstract class TransactionsEntity extends BaseEntity with _$TransactionsEntity {
  const TransactionsEntity._();

  const factory TransactionsEntity({
    required List<TransactionEntity> orders,
  }) = _TransactionsEntity;

}

@freezed
abstract class TransactionEntity extends BaseEntity with _$TransactionEntity {
  const TransactionEntity._();

  const factory TransactionEntity({
    required String id,
    required String name,
    required String points,
    required DateTime date,
  }) = _TransactionEntity;

}
