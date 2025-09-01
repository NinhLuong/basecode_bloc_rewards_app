import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/auth/domain/entities/check_email_entity.dart';

class CheckEmailModel extends BaseModel<CheckEmailEntity> {
  CheckEmailModel({
    this.error,
    this.errorCode,
    this.errorMessage,
    this.verifyCode,
  });

  CheckEmailModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    verifyCode = json['verify_code'];
  }

  bool? error;
  int? errorCode;
  String? errorMessage;
  String? verifyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    map['error_message'] = errorMessage;
    map['verify_code'] = verifyCode;
    return map;
  }

  @override
  CheckEmailEntity toEntity() {
    return CheckEmailEntity(verifyCode: verifyCode);
  }
}
