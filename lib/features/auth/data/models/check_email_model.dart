import 'package:flutter/foundation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_email_model.freezed.dart';
part 'check_email_model.g.dart';

@freezed
abstract class CheckEmailModel extends BaseModel<CheckEmailEntity> with _$CheckEmailModel {
  const CheckEmailModel._();

  const factory CheckEmailModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'verify_code') String? verifyCode,
  }) = _CheckEmailModel;

  factory CheckEmailModel.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailModelFromJson(json);


  @override
  CheckEmailEntity toEntity() {
    return CheckEmailEntity(verifyCode: verifyCode);
  }
  
}
