import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'user_entity.g.dart';

@immutable
@JsonSerializable()
class UserEntity extends BaseEntity {
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  
  @JsonKey(name: 'accountId')
  final String accountId;
  
  @JsonKey(name: 'userName')
  final String userName;
  
  @JsonKey(name: 'email')
  final String email;
  
  @JsonKey(name: 'fullName')
  final String fullName;
  
  @JsonKey(name: 'points')
  final String points;
  
  @JsonKey(name: 'redeemedPoints')
  final String redeemedPoints;

  UserEntity({
    this.accessToken,
    required this.accountId,
    required this.email,
    required this.fullName,
    required this.points,
    required this.redeemedPoints,
    required this.userName,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => 
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);

  @override
  List<Object> get props =>
      [accountId, email, fullName, points, redeemedPoints, userName];
}
