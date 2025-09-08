import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/top_users/domain/entities/top_users_entity.dart';

part 'top_users_model.g.dart';

@immutable
@JsonSerializable()
class TopUsersModel extends BaseModel<TopUsersEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'requests')
  final List<UserRankModel>? requests;
  
  @JsonKey(name: 'my_rank')
  final UserRankModel? myRank;

  const TopUsersModel({
    this.error,
    this.errorCode,
    this.requests,
    this.myRank,
  });

  factory TopUsersModel.fromJson(Map<String, dynamic> json) => 
      _$TopUsersModelFromJson(json);

  Map<String, dynamic> toJson() => _$TopUsersModelToJson(this);

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

@immutable
@JsonSerializable()
class UserRankModel extends BaseModel<UserRankEntity> {
  @JsonKey(name: 'request_from')
  final String? _requestFrom;
  
  @JsonKey(name: 'points')
  final String? points;
  
  @JsonKey(name: 'amount')
  final String? amount;
  
  @JsonKey(name: 'rank')
  final int? rank;

  const UserRankModel({
    String? requestFrom,
    this.points,
    this.amount,
    this.rank,
  }) : _requestFrom = requestFrom;

  // Custom getter to apply masking logic
  String? get requestFrom {
    if (_requestFrom == null || _requestFrom.isEmpty) return '';
    final length = _requestFrom.length;
    if (length <= 3) return _requestFrom;
    return _requestFrom.replaceRange(length - 3, length, '***');
  }

  factory UserRankModel.fromJson(Map<String, dynamic> json) => 
      _$UserRankModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserRankModelToJson(this);

  @override
  UserRankEntity toEntity() {
    return UserRankEntity(
      wallet: requestFrom ?? '',
      points: (num.tryParse(points ?? '') ?? 0).toDouble(),
      amount: amount ?? '',
      rank: rank ?? 0,
    );
  }
}
