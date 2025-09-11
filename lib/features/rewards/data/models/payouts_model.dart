import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magic_rewards/core/data/models/base_model.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';

part 'payouts_model.freezed.dart';
part 'payouts_model.g.dart';

@freezed
abstract class PayoutsModel extends BaseModel<PayoutsEntity> with _$PayoutsModel {
  const PayoutsModel._();

  const factory PayoutsModel({
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'error_code') int? errorCode,
    @JsonKey(name: 'payouts') List<Payout>? payouts,
    @JsonKey(name: 'balance') String? balance,
  }) = _PayoutsModel;

  factory PayoutsModel.fromJson(Map<String, dynamic> json) =>
      _$PayoutsModelFromJson(json);

  @override
  PayoutsEntity toEntity() {
    double minPayout = 1000000;
    double redeemPercent = 0;
    if (payouts != null) {
      for (var element in payouts!) {
        double cost =
            double.tryParse(element.payoutPointsRequired ?? '') ?? 0.0;
        if (cost < minPayout) {
          minPayout = cost;
        }
      }
    }
    double doubleBalance = num.tryParse(balance ?? '')?.toDouble() ?? 0.0;
    if (doubleBalance >= minPayout) {
      redeemPercent = 1;
    } else {
      redeemPercent = doubleBalance / minPayout;
    }
    if (redeemPercent < 0 || redeemPercent > 1) {
      redeemPercent = 0;
    }
    return PayoutsEntity(
        payouts: payouts?.map((e) => e.toEntity()).toList() ?? [],
        balance: doubleBalance,
        minPayout: minPayout,
        redeemPercent: redeemPercent);
  }
}

@freezed
abstract class Payout extends BaseModel<PayoutEntity> with _$Payout {
  const Payout._();

  const factory Payout({
    @JsonKey(name: 'payout_id') String? payoutId,
    @JsonKey(name: 'payout_title') String? payoutTitle,
    @JsonKey(name: 'payout_subtitle') String? payoutSubtitle,
    @JsonKey(name: 'payout_message') String? payoutMessage,
    @JsonKey(name: 'payout_amount') String? payoutAmount,
    @JsonKey(name: 'payout_pointsRequired') String? payoutPointsRequired,
    @JsonKey(name: 'payout_thumbnail') String? payoutThumbnail,
    @JsonKey(name: 'payout_status') String? payoutStatus,
  }) = _Payout;

  factory Payout.fromJson(Map<String, dynamic> json) =>
      _$PayoutFromJson(json);

  @override
  PayoutEntity toEntity() {
    return PayoutEntity(
        id: payoutId!,
        title: payoutTitle ?? '',
        subtitle: payoutSubtitle ?? '',
        message: payoutMessage ?? '',
        thumbnail: payoutThumbnail ?? '',
        cost: double.tryParse(payoutPointsRequired ?? '') ?? 0);
  }
}
