import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/domain/entities/base_entity.dart';

part 'payouts_entity.freezed.dart';

@freezed
abstract class PayoutsEntity extends BaseEntity with _$PayoutsEntity {
  const PayoutsEntity._();

  const factory PayoutsEntity({
    required List<PayoutEntity> payouts,
    required double balance,
    required double minPayout,
    required double redeemPercent,
  }) = _PayoutsEntity;

}

@freezed
abstract class PayoutEntity extends BaseEntity with _$PayoutEntity {
  const PayoutEntity._();

  const factory PayoutEntity({
    required String id,
    required String title,
    required String subtitle,
    required String message,
    required String thumbnail,
    required double cost,
  }) = _PayoutEntity;

}
