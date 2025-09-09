import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'top_users_entity.freezed.dart';

@freezed
abstract class TopUsersEntity extends BaseEntity with _$TopUsersEntity {
  const TopUsersEntity._();

  const factory TopUsersEntity({
    required List<UserRankEntity> topThree,
    required List<UserRankEntity> rest,
    UserRankEntity? myRank,
    required double maxPoints,
  }) = _TopUsersEntity;

}

@freezed
abstract class UserRankEntity extends BaseEntity with _$UserRankEntity {
  const UserRankEntity._();

  const factory UserRankEntity({
    required String wallet,
    required double points,
    required String amount,
    required int rank,
  }) = _UserRankEntity;

}
