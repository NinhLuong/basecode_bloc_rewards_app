import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

@immutable
class UserEntity extends BaseEntity {
  final String? accessToken;
  final String accountId;
  final String userName;
  final String email;
  final String fullName;
  final String points;
  final String redeemedPoints;

  const UserEntity({
    this.accessToken,
    required this.accountId,
    required this.email,
    required this.fullName,
    required this.points,
    required this.redeemedPoints,
    required this.userName,
  });

  @override
  List<Object> get props =>
      [accountId, email, fullName, points, redeemedPoints, userName];
}
