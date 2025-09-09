import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'check_email_entity.freezed.dart';

@freezed
abstract class CheckEmailEntity extends BaseEntity with _$CheckEmailEntity {
  const CheckEmailEntity._();

  const factory CheckEmailEntity({
    required String? verifyCode,
  }) = _CheckEmailEntity;

}
