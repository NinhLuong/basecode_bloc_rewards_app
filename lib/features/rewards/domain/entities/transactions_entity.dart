import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class TransactionsEntity extends BaseEntity {
  final List<TransactionEntity> orders;

  const TransactionsEntity({required this.orders});

  @override
  List<Object?> get props => [orders];
}

class TransactionEntity extends BaseEntity {
  final String id;
  final String name;
  final String points;
  final DateTime date;

  const TransactionEntity(
      {required this.id,
      required this.name,
      required this.points,
      required this.date});

  @override
  List<Object?> get props => [id, name, points, date];
}
