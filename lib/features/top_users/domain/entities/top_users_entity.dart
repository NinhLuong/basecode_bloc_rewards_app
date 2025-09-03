import 'package:magic_rewards/core/domain/entities/base_entity.dart';

class TopUsersEntity extends BaseEntity {
  TopUsersEntity({
    required this.topThree,
    required this.rest,
    this.myRank,
    required this.maxPoints,
  });

  final List<UserRankEntity> topThree;
  final List<UserRankEntity> rest;
  final UserRankEntity? myRank;
  final double maxPoints;

  @override
  List<Object?> get props => [rest, topThree, myRank, maxPoints];
}

class UserRankEntity extends BaseEntity {
  UserRankEntity({
    required this.wallet,
    required this.points,
    required this.amount,
    required this.rank,
  });

  final String wallet;
  final double points;
  final String amount;
  final int rank;

  @override
  List<Object> get props => [wallet, points, amount, rank];
}
