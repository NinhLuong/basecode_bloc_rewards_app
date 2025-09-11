import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';

part 'top_users_model.freezed.dart';
part 'top_users_model.g.dart';

@freezed
abstract class TopUsersModel extends BaseModel<TopUsersEntity> with _$TopUsersModel {
  const TopUsersModel._();

  const factory TopUsersModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'requests') List<UserRankModel>? requests,
    @JsonKey(name: 'my_rank') UserRankModel? myRank,
  }) = _TopUsersModel;

  factory TopUsersModel.fromJson(Map<String, dynamic> json) =>
      _$TopUsersModelFromJson(json);

  @override
  TopUsersEntity toEntity() {
    return TopUsersEntity(
        topThree: requests
                ?.where((e) => e.rank! < 4)
                .map((e) => e.toEntity())
                .toList() ??
            [],
        rest: requests
                ?.where(
                  (e) => e.rank! > 3,
                )
                .map((e) => e.toEntity())
                .toList() ??
            [],
        maxPoints: (num.tryParse(requests
                        ?.firstWhereOrNull((element) => element.rank == 1)
                        ?.points ??
                    '0.0') ??
                0.0)
            .toDouble(),
        myRank: myRank?.toEntity());
  }
}

@freezed
abstract class UserRankModel extends BaseModel<UserRankEntity> with _$UserRankModel {
  const UserRankModel._();

  const factory UserRankModel({
    @JsonKey(name: 'request_from') String? requestFrom,
    @JsonKey(name: 'points') String? points,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'rank') int? rank,
  }) = _UserRankModel;

  // Custom getter to apply masking logic
  String? get maskedRequestFrom {
    if (requestFrom == null || requestFrom!.isEmpty) return '';
    final length = requestFrom!.length;
    if (length <= 3) return requestFrom;
    return requestFrom!.replaceRange(length - 3, length, '***');
  }

  factory UserRankModel.fromJson(Map<String, dynamic> json) =>
      _$UserRankModelFromJson(json);

  @override
  UserRankEntity toEntity() {
    return UserRankEntity(
      wallet: maskedRequestFrom ?? '',
      points: (num.tryParse(points ?? '') ?? 0).toDouble(),
      amount: amount ?? '',
      rank: rank ?? 0,
    );
  }
}
