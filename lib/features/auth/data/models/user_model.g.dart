// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  error: json['error'] as bool?,
  errorCode: (json['error_code'] as num?)?.toInt(),
  accessToken: json['accessToken'] as String?,
  accountId: json['accountId'] as String?,
  account: (json['account'] as List<dynamic>?)
      ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_code': instance.errorCode,
      'accessToken': instance.accessToken,
      'accountId': instance.accountId,
      'account': instance.account,
    };

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  error: json['error'] as bool?,
  errorCode: (json['error_code'] as num?)?.toInt(),
  id: json['id'] as String?,
  lastAccess: json['last_access'] as String?,
  lastIpAddr: json['last_ip_addr'] as String?,
  gcm: json['gcm'] as String?,
  state: json['state'] as String?,
  fullname: json['fullname'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  regtime: json['regtime'] as String?,
  ipAddr: json['ip_addr'] as String?,
  mobile: json['mobile'] as String?,
  points: json['points'] as String?,
  refer: json['refer'] as String?,
  refered: json['refered'] as String?,
  redeemedPoints: json['redeemed_points'] as String?,
  totalPoints: json['total_points'] as String?,
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'error': instance.error,
  'error_code': instance.errorCode,
  'id': instance.id,
  'last_access': instance.lastAccess,
  'last_ip_addr': instance.lastIpAddr,
  'gcm': instance.gcm,
  'state': instance.state,
  'fullname': instance.fullname,
  'username': instance.username,
  'email': instance.email,
  'regtime': instance.regtime,
  'ip_addr': instance.ipAddr,
  'mobile': instance.mobile,
  'points': instance.points,
  'refer': instance.refer,
  'refered': instance.refered,
  'redeemed_points': instance.redeemedPoints,
  'total_points': instance.totalPoints,
};
