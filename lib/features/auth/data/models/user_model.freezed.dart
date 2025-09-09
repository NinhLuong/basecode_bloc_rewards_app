// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'accessToken') String? get accessToken;@JsonKey(name: 'accountId') String? get accountId;@JsonKey(name: 'account') List<Account>? get account;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('accountId', accountId))..add(DiagnosticsProperty('account', account));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other.account, account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,accessToken,accountId,const DeepCollectionEquality().hash(account));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModel(error: $error, errorCode: $errorCode, accessToken: $accessToken, accountId: $accountId, account: $account)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'accessToken') String? accessToken,@JsonKey(name: 'accountId') String? accountId,@JsonKey(name: 'account') List<Account>? account
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? accessToken = freezed,Object? accountId = freezed,Object? account = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as List<Account>?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'accountId')  String? accountId, @JsonKey(name: 'account')  List<Account>? account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.accessToken,_that.accountId,_that.account);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'accountId')  String? accountId, @JsonKey(name: 'account')  List<Account>? account)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.error,_that.errorCode,_that.accessToken,_that.accountId,_that.account);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'accessToken')  String? accessToken, @JsonKey(name: 'accountId')  String? accountId, @JsonKey(name: 'account')  List<Account>? account)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.accessToken,_that.accountId,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel extends UserModel with DiagnosticableTreeMixin {
  const _UserModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'accessToken') this.accessToken, @JsonKey(name: 'accountId') this.accountId, @JsonKey(name: 'account') final  List<Account>? account}): _account = account,super._();
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'accessToken') final  String? accessToken;
@override@JsonKey(name: 'accountId') final  String? accountId;
 final  List<Account>? _account;
@override@JsonKey(name: 'account') List<Account>? get account {
  final value = _account;
  if (value == null) return null;
  if (_account is EqualUnmodifiableListView) return _account;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('accessToken', accessToken))..add(DiagnosticsProperty('accountId', accountId))..add(DiagnosticsProperty('account', account));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&const DeepCollectionEquality().equals(other._account, _account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,accessToken,accountId,const DeepCollectionEquality().hash(_account));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserModel(error: $error, errorCode: $errorCode, accessToken: $accessToken, accountId: $accountId, account: $account)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'accessToken') String? accessToken,@JsonKey(name: 'accountId') String? accountId,@JsonKey(name: 'account') List<Account>? account
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? accessToken = freezed,Object? accountId = freezed,Object? account = freezed,}) {
  return _then(_UserModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,accountId: freezed == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self._account : account // ignore: cast_nullable_to_non_nullable
as List<Account>?,
  ));
}


}


/// @nodoc
mixin _$Account implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'id') String? get id;@JsonKey(name: 'last_access') String? get lastAccess;@JsonKey(name: 'last_ip_addr') String? get lastIpAddr;@JsonKey(name: 'gcm') String? get gcm;@JsonKey(name: 'state') String? get state;@JsonKey(name: 'fullname') String? get fullname;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'regtime') String? get regtime;@JsonKey(name: 'ip_addr') String? get ipAddr;@JsonKey(name: 'mobile') String? get mobile;@JsonKey(name: 'points') String? get points;@JsonKey(name: 'refer') String? get refer;@JsonKey(name: 'refered') String? get refered;@JsonKey(name: 'redeemed_points') String? get redeemedPoints;@JsonKey(name: 'total_points') String? get totalPoints;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Account'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastAccess', lastAccess))..add(DiagnosticsProperty('lastIpAddr', lastIpAddr))..add(DiagnosticsProperty('gcm', gcm))..add(DiagnosticsProperty('state', state))..add(DiagnosticsProperty('fullname', fullname))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('regtime', regtime))..add(DiagnosticsProperty('ipAddr', ipAddr))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('refer', refer))..add(DiagnosticsProperty('refered', refered))..add(DiagnosticsProperty('redeemedPoints', redeemedPoints))..add(DiagnosticsProperty('totalPoints', totalPoints));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastAccess, lastAccess) || other.lastAccess == lastAccess)&&(identical(other.lastIpAddr, lastIpAddr) || other.lastIpAddr == lastIpAddr)&&(identical(other.gcm, gcm) || other.gcm == gcm)&&(identical(other.state, state) || other.state == state)&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.regtime, regtime) || other.regtime == regtime)&&(identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.points, points) || other.points == points)&&(identical(other.refer, refer) || other.refer == refer)&&(identical(other.refered, refered) || other.refered == refered)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.totalPoints, totalPoints) || other.totalPoints == totalPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,id,lastAccess,lastIpAddr,gcm,state,fullname,username,email,regtime,ipAddr,mobile,points,refer,refered,redeemedPoints,totalPoints);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Account(error: $error, errorCode: $errorCode, id: $id, lastAccess: $lastAccess, lastIpAddr: $lastIpAddr, gcm: $gcm, state: $state, fullname: $fullname, username: $username, email: $email, regtime: $regtime, ipAddr: $ipAddr, mobile: $mobile, points: $points, refer: $refer, refered: $refered, redeemedPoints: $redeemedPoints, totalPoints: $totalPoints)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'id') String? id,@JsonKey(name: 'last_access') String? lastAccess,@JsonKey(name: 'last_ip_addr') String? lastIpAddr,@JsonKey(name: 'gcm') String? gcm,@JsonKey(name: 'state') String? state,@JsonKey(name: 'fullname') String? fullname,@JsonKey(name: 'username') String? username,@JsonKey(name: 'email') String? email,@JsonKey(name: 'regtime') String? regtime,@JsonKey(name: 'ip_addr') String? ipAddr,@JsonKey(name: 'mobile') String? mobile,@JsonKey(name: 'points') String? points,@JsonKey(name: 'refer') String? refer,@JsonKey(name: 'refered') String? refered,@JsonKey(name: 'redeemed_points') String? redeemedPoints,@JsonKey(name: 'total_points') String? totalPoints
});




}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? id = freezed,Object? lastAccess = freezed,Object? lastIpAddr = freezed,Object? gcm = freezed,Object? state = freezed,Object? fullname = freezed,Object? username = freezed,Object? email = freezed,Object? regtime = freezed,Object? ipAddr = freezed,Object? mobile = freezed,Object? points = freezed,Object? refer = freezed,Object? refered = freezed,Object? redeemedPoints = freezed,Object? totalPoints = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastAccess: freezed == lastAccess ? _self.lastAccess : lastAccess // ignore: cast_nullable_to_non_nullable
as String?,lastIpAddr: freezed == lastIpAddr ? _self.lastIpAddr : lastIpAddr // ignore: cast_nullable_to_non_nullable
as String?,gcm: freezed == gcm ? _self.gcm : gcm // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,fullname: freezed == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,regtime: freezed == regtime ? _self.regtime : regtime // ignore: cast_nullable_to_non_nullable
as String?,ipAddr: freezed == ipAddr ? _self.ipAddr : ipAddr // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,refer: freezed == refer ? _self.refer : refer // ignore: cast_nullable_to_non_nullable
as String?,refered: freezed == refered ? _self.refered : refered // ignore: cast_nullable_to_non_nullable
as String?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as String?,totalPoints: freezed == totalPoints ? _self.totalPoints : totalPoints // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Account].
extension AccountPatterns on Account {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Account value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Account value)  $default,){
final _that = this;
switch (_that) {
case _Account():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Account value)?  $default,){
final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'last_access')  String? lastAccess, @JsonKey(name: 'last_ip_addr')  String? lastIpAddr, @JsonKey(name: 'gcm')  String? gcm, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'fullname')  String? fullname, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'regtime')  String? regtime, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'mobile')  String? mobile, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'refer')  String? refer, @JsonKey(name: 'refered')  String? refered, @JsonKey(name: 'redeemed_points')  String? redeemedPoints, @JsonKey(name: 'total_points')  String? totalPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.error,_that.errorCode,_that.id,_that.lastAccess,_that.lastIpAddr,_that.gcm,_that.state,_that.fullname,_that.username,_that.email,_that.regtime,_that.ipAddr,_that.mobile,_that.points,_that.refer,_that.refered,_that.redeemedPoints,_that.totalPoints);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'last_access')  String? lastAccess, @JsonKey(name: 'last_ip_addr')  String? lastIpAddr, @JsonKey(name: 'gcm')  String? gcm, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'fullname')  String? fullname, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'regtime')  String? regtime, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'mobile')  String? mobile, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'refer')  String? refer, @JsonKey(name: 'refered')  String? refered, @JsonKey(name: 'redeemed_points')  String? redeemedPoints, @JsonKey(name: 'total_points')  String? totalPoints)  $default,) {final _that = this;
switch (_that) {
case _Account():
return $default(_that.error,_that.errorCode,_that.id,_that.lastAccess,_that.lastIpAddr,_that.gcm,_that.state,_that.fullname,_that.username,_that.email,_that.regtime,_that.ipAddr,_that.mobile,_that.points,_that.refer,_that.refered,_that.redeemedPoints,_that.totalPoints);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'id')  String? id, @JsonKey(name: 'last_access')  String? lastAccess, @JsonKey(name: 'last_ip_addr')  String? lastIpAddr, @JsonKey(name: 'gcm')  String? gcm, @JsonKey(name: 'state')  String? state, @JsonKey(name: 'fullname')  String? fullname, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'regtime')  String? regtime, @JsonKey(name: 'ip_addr')  String? ipAddr, @JsonKey(name: 'mobile')  String? mobile, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'refer')  String? refer, @JsonKey(name: 'refered')  String? refered, @JsonKey(name: 'redeemed_points')  String? redeemedPoints, @JsonKey(name: 'total_points')  String? totalPoints)?  $default,) {final _that = this;
switch (_that) {
case _Account() when $default != null:
return $default(_that.error,_that.errorCode,_that.id,_that.lastAccess,_that.lastIpAddr,_that.gcm,_that.state,_that.fullname,_that.username,_that.email,_that.regtime,_that.ipAddr,_that.mobile,_that.points,_that.refer,_that.refered,_that.redeemedPoints,_that.totalPoints);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Account with DiagnosticableTreeMixin implements Account {
  const _Account({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'id') this.id, @JsonKey(name: 'last_access') this.lastAccess, @JsonKey(name: 'last_ip_addr') this.lastIpAddr, @JsonKey(name: 'gcm') this.gcm, @JsonKey(name: 'state') this.state, @JsonKey(name: 'fullname') this.fullname, @JsonKey(name: 'username') this.username, @JsonKey(name: 'email') this.email, @JsonKey(name: 'regtime') this.regtime, @JsonKey(name: 'ip_addr') this.ipAddr, @JsonKey(name: 'mobile') this.mobile, @JsonKey(name: 'points') this.points, @JsonKey(name: 'refer') this.refer, @JsonKey(name: 'refered') this.refered, @JsonKey(name: 'redeemed_points') this.redeemedPoints, @JsonKey(name: 'total_points') this.totalPoints});
  factory _Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'last_access') final  String? lastAccess;
@override@JsonKey(name: 'last_ip_addr') final  String? lastIpAddr;
@override@JsonKey(name: 'gcm') final  String? gcm;
@override@JsonKey(name: 'state') final  String? state;
@override@JsonKey(name: 'fullname') final  String? fullname;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'regtime') final  String? regtime;
@override@JsonKey(name: 'ip_addr') final  String? ipAddr;
@override@JsonKey(name: 'mobile') final  String? mobile;
@override@JsonKey(name: 'points') final  String? points;
@override@JsonKey(name: 'refer') final  String? refer;
@override@JsonKey(name: 'refered') final  String? refered;
@override@JsonKey(name: 'redeemed_points') final  String? redeemedPoints;
@override@JsonKey(name: 'total_points') final  String? totalPoints;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Account'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastAccess', lastAccess))..add(DiagnosticsProperty('lastIpAddr', lastIpAddr))..add(DiagnosticsProperty('gcm', gcm))..add(DiagnosticsProperty('state', state))..add(DiagnosticsProperty('fullname', fullname))..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('regtime', regtime))..add(DiagnosticsProperty('ipAddr', ipAddr))..add(DiagnosticsProperty('mobile', mobile))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('refer', refer))..add(DiagnosticsProperty('refered', refered))..add(DiagnosticsProperty('redeemedPoints', redeemedPoints))..add(DiagnosticsProperty('totalPoints', totalPoints));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastAccess, lastAccess) || other.lastAccess == lastAccess)&&(identical(other.lastIpAddr, lastIpAddr) || other.lastIpAddr == lastIpAddr)&&(identical(other.gcm, gcm) || other.gcm == gcm)&&(identical(other.state, state) || other.state == state)&&(identical(other.fullname, fullname) || other.fullname == fullname)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.regtime, regtime) || other.regtime == regtime)&&(identical(other.ipAddr, ipAddr) || other.ipAddr == ipAddr)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.points, points) || other.points == points)&&(identical(other.refer, refer) || other.refer == refer)&&(identical(other.refered, refered) || other.refered == refered)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.totalPoints, totalPoints) || other.totalPoints == totalPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,id,lastAccess,lastIpAddr,gcm,state,fullname,username,email,regtime,ipAddr,mobile,points,refer,refered,redeemedPoints,totalPoints);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Account(error: $error, errorCode: $errorCode, id: $id, lastAccess: $lastAccess, lastIpAddr: $lastIpAddr, gcm: $gcm, state: $state, fullname: $fullname, username: $username, email: $email, regtime: $regtime, ipAddr: $ipAddr, mobile: $mobile, points: $points, refer: $refer, refered: $refered, redeemedPoints: $redeemedPoints, totalPoints: $totalPoints)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'id') String? id,@JsonKey(name: 'last_access') String? lastAccess,@JsonKey(name: 'last_ip_addr') String? lastIpAddr,@JsonKey(name: 'gcm') String? gcm,@JsonKey(name: 'state') String? state,@JsonKey(name: 'fullname') String? fullname,@JsonKey(name: 'username') String? username,@JsonKey(name: 'email') String? email,@JsonKey(name: 'regtime') String? regtime,@JsonKey(name: 'ip_addr') String? ipAddr,@JsonKey(name: 'mobile') String? mobile,@JsonKey(name: 'points') String? points,@JsonKey(name: 'refer') String? refer,@JsonKey(name: 'refered') String? refered,@JsonKey(name: 'redeemed_points') String? redeemedPoints,@JsonKey(name: 'total_points') String? totalPoints
});




}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? id = freezed,Object? lastAccess = freezed,Object? lastIpAddr = freezed,Object? gcm = freezed,Object? state = freezed,Object? fullname = freezed,Object? username = freezed,Object? email = freezed,Object? regtime = freezed,Object? ipAddr = freezed,Object? mobile = freezed,Object? points = freezed,Object? refer = freezed,Object? refered = freezed,Object? redeemedPoints = freezed,Object? totalPoints = freezed,}) {
  return _then(_Account(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastAccess: freezed == lastAccess ? _self.lastAccess : lastAccess // ignore: cast_nullable_to_non_nullable
as String?,lastIpAddr: freezed == lastIpAddr ? _self.lastIpAddr : lastIpAddr // ignore: cast_nullable_to_non_nullable
as String?,gcm: freezed == gcm ? _self.gcm : gcm // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,fullname: freezed == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,regtime: freezed == regtime ? _self.regtime : regtime // ignore: cast_nullable_to_non_nullable
as String?,ipAddr: freezed == ipAddr ? _self.ipAddr : ipAddr // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,refer: freezed == refer ? _self.refer : refer // ignore: cast_nullable_to_non_nullable
as String?,refered: freezed == refered ? _self.refered : refered // ignore: cast_nullable_to_non_nullable
as String?,redeemedPoints: freezed == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as String?,totalPoints: freezed == totalPoints ? _self.totalPoints : totalPoints // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
