import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity extends BaseEntity with _$ProfileEntity {
  const ProfileEntity._();

  const factory ProfileEntity({
    required String balance,
    required String redeemedPoints,
    required String totalPoints,
  }) = _ProfileEntity;

}
