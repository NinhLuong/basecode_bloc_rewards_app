import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'check_email_entity.g.dart';

@immutable
@JsonSerializable()
class CheckEmailEntity extends BaseEntity {
  @JsonKey(name: 'verifyCode')
  final String? verifyCode;

  CheckEmailEntity({required this.verifyCode});

  factory CheckEmailEntity.fromJson(Map<String, dynamic> json) => 
      _$CheckEmailEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CheckEmailEntityToJson(this);

  @override
  List<Object?> get props => [verifyCode];
}
