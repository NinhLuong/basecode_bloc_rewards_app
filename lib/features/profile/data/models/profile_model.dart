import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel extends BaseModel<ProfileEntity> with _$ProfileModel {
  const ProfileModel._();

  const factory ProfileModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'data') ProfileData? data,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  @override
  ProfileEntity toEntity() {
    return ProfileEntity(
      balance: data?.balance ?? '',
      redeemedPoints: data?.redeemedPoints ?? '',
      totalPoints: data?.totalPoints ?? '',
    );
  }
}

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: 'balance') String? balance,
    @JsonKey(name: 'redeemed_points') String? redeemedPoints,
    @JsonKey(name: 'total_points') String? totalPoints,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
