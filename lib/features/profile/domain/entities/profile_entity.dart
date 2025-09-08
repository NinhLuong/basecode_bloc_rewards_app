import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

@immutable
class ProfileEntity extends BaseEntity {
  final String balance;
  final String redeemedPoints;
  final String totalPoints;

  const ProfileEntity({
    required this.balance,
    required this.redeemedPoints,
    required this.totalPoints,
  });

  @override
  List<Object?> get props => [balance, redeemedPoints, totalPoints];
}
