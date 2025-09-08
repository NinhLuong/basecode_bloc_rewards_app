import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.g.dart';

@immutable
@JsonSerializable()
class ProfileModel extends BaseModel<ProfileEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'data')
  final ProfileData? data;

  const ProfileModel({
    this.error,
    this.errorCode,
    this.data,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => 
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);

  @override
  ProfileEntity toEntity() {
    return ProfileEntity(
      balance: data?.balance ?? '',
      redeemedPoints: data?.redeemedPoints ?? '',
      totalPoints: data?.totalPoints ?? '',
    );
  }
}

@immutable
@JsonSerializable()
class ProfileData {
  @JsonKey(name: 'balance')
  final String? balance;
  
  @JsonKey(name: 'redeemed_points')
  final String? redeemedPoints;
  
  @JsonKey(name: 'total_points')
  final String? totalPoints;

  const ProfileData({
    this.balance,
    this.redeemedPoints,
    this.totalPoints,
  });

  factory ProfileData.fromJson(Map<String, dynamic> json) => 
      _$ProfileDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileDataToJson(this);
}
