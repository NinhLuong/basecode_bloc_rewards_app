// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopUsersModel _$TopUsersModelFromJson(Map<String, dynamic> json) =>
    TopUsersModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => UserRankModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      myRank: json['my_rank'] == null
          ? null
          : UserRankModel.fromJson(json['my_rank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopUsersModelToJson(TopUsersModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'requests': instance.requests,
      'my_rank': instance.myRank,
    };

UserRankModel _$UserRankModelFromJson(Map<String, dynamic> json) =>
    UserRankModel(
      requestFrom: json['requestFrom'] as String?,
      points: json['points'] as String?,
      amount: json['amount'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserRankModelToJson(UserRankModel instance) =>
    <String, dynamic>{
      'points': instance.points,
      'amount': instance.amount,
      'rank': instance.rank,
      'requestFrom': instance.requestFrom,
    };
