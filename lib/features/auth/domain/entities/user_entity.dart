import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity extends BaseEntity with _$UserEntity {
  const UserEntity._();

  const factory UserEntity({
    String? accessToken,
    required String accountId,
    required String userName,
    required String email,
    required String fullName,
    required String points,
    required String redeemedPoints,
  }) = _UserEntity;

}
