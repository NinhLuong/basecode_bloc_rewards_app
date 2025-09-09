// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payouts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayoutsModel _$PayoutsModelFromJson(Map<String, dynamic> json) =>
    _PayoutsModel(
      error: json['error'] as bool?,
      errorCode: (json['error_code'] as num?)?.toInt(),
      payouts: (json['payouts'] as List<dynamic>?)
          ?.map((e) => Payout.fromJson(e as Map<String, dynamic>))
          .toList(),
      balance: json['balance'] as String?,
    );

Map<String, dynamic> _$PayoutsModelToJson(_PayoutsModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'payouts': instance.payouts,
      'balance': instance.balance,
    };

_Payout _$PayoutFromJson(Map<String, dynamic> json) => _Payout(
  payoutId: json['payout_id'] as String?,
  payoutTitle: json['payout_title'] as String?,
  payoutSubtitle: json['payout_subtitle'] as String?,
  payoutMessage: json['payout_message'] as String?,
  payoutAmount: json['payout_amount'] as String?,
  payoutPointsRequired: json['payout_pointsRequired'] as String?,
  payoutThumbnail: json['payout_thumbnail'] as String?,
  payoutStatus: json['payout_status'] as String?,
);

Map<String, dynamic> _$PayoutToJson(_Payout instance) => <String, dynamic>{
  'payout_id': instance.payoutId,
  'payout_title': instance.payoutTitle,
  'payout_subtitle': instance.payoutSubtitle,
  'payout_message': instance.payoutMessage,
  'payout_amount': instance.payoutAmount,
  'payout_pointsRequired': instance.payoutPointsRequired,
  'payout_thumbnail': instance.payoutThumbnail,
  'payout_status': instance.payoutStatus,
};
