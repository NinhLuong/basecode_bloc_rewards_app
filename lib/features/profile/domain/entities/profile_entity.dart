import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class ProfileEntity extends BaseEntity {
  final String balance;
  final String redeemedPoints;
  final String totalPoints;

  ProfileEntity(
      {required this.balance,
      required this.redeemedPoints,
      required this.totalPoints});

  @override
  List<Object?> get props => [balance, redeemedPoints, totalPoints];
}
