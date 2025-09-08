import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:magic_rewards/core/domain/models/base_model.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';

part 'payouts_model.g.dart';

@immutable
@JsonSerializable()
class PayoutsModel extends BaseModel<PayoutsEntity> {
  @JsonKey(name: 'error')
  final bool? error;
  
  @JsonKey(name: 'error_code')
  final int? errorCode;
  
  @JsonKey(name: 'payouts')
  final List<Payout>? payouts;
  
  @JsonKey(name: 'balance')
  final String? balance;

  const PayoutsModel({
    this.error,
    this.errorCode,
    this.payouts,
    this.balance,
  });

  factory PayoutsModel.fromJson(Map<String, dynamic> json) => 
      _$PayoutsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PayoutsModelToJson(this);

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

@immutable
@JsonSerializable()
class Payout extends BaseModel<PayoutEntity> {
  @JsonKey(name: 'payout_id')
  final String? payoutId;
  
  @JsonKey(name: 'payout_title')
  final String? payoutTitle;
  
  @JsonKey(name: 'payout_subtitle')
  final String? payoutSubtitle;
  
  @JsonKey(name: 'payout_message')
  final String? payoutMessage;
  
  @JsonKey(name: 'payout_amount')
  final String? payoutAmount;
  
  @JsonKey(name: 'payout_pointsRequired')
  final String? payoutPointsRequired;
  
  @JsonKey(name: 'payout_thumbnail')
  final String? payoutThumbnail;
  
  @JsonKey(name: 'payout_status')
  final String? payoutStatus;

  const Payout({
    this.payoutId,
    this.payoutTitle,
    this.payoutSubtitle,
    this.payoutMessage,
    this.payoutAmount,
    this.payoutPointsRequired,
    this.payoutThumbnail,
    this.payoutStatus,
  });

  factory Payout.fromJson(Map<String, dynamic> json) => 
      _$PayoutFromJson(json);

  Map<String, dynamic> toJson() => _$PayoutToJson(this);

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
