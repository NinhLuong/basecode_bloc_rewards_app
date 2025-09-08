import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';

part 'check_email_model.g.dart';

@immutable
@JsonSerializable()
class CheckEmailModel extends BaseModel<CheckEmailEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'error_message')
  final String? errorMessage;
  
  @JsonKey(name: 'verify_code')
  final String? verifyCode;

  const CheckEmailModel({
    this.error,
    this.errorCode,
    this.errorMessage,
    this.verifyCode,
  });

  factory CheckEmailModel.fromJson(Map<String, dynamic> json) => 
      _$CheckEmailModelFromJson(json);

  Map<String, dynamic> toJson() => _$CheckEmailModelToJson(this);

  @override
  CheckEmailEntity toEntity() {
    return CheckEmailEntity(verifyCode: verifyCode);
  }
}
