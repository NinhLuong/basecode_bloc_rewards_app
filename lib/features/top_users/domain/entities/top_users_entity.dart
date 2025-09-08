import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

@immutable
class TopUsersEntity extends BaseEntity {
  final List<UserRankEntity> topThree;
  final List<UserRankEntity> rest;
  final UserRankEntity? myRank;
  final double maxPoints;

  const TopUsersEntity({
    required this.topThree,
    required this.rest,
    this.myRank,
    required this.maxPoints,
  });

  @override
  List<Object?> get props => [rest, topThree, myRank, maxPoints];
}

@immutable
class UserRankEntity extends BaseEntity {
  final String wallet;
  final double points;
  final String amount;
  final int rank;

  const UserRankEntity({
    required this.wallet,
    required this.points,
    required this.amount,
    required this.rank,
  });

  @override
  List<Object> get props => [wallet, points, amount, rank];
}
