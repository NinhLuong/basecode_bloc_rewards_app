// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_offers_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLiveOffersParameters _$GetLiveOffersParametersFromJson(
  Map<String, dynamic> json,
) => GetLiveOffersParameters(
  page: (json['page'] as num).toInt(),
  length: (json['length'] as num).toInt(),
  accessToken: json['accessToken'] as String?,
  accountId: json['accountId'] as String?,
  username: json['user'] as String?,
  clientId: (json['clientId'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetLiveOffersParametersToJson(
  GetLiveOffersParameters instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accountId': instance.accountId,
  'user': instance.username,
  'clientId': instance.clientId,
  'page': instance.page,
  'length': instance.length,
};
