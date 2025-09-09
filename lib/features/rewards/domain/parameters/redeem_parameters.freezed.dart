// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedeemParameters {

@JsonKey(name: 'clientId') int get clientId;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'user') String get username;@JsonKey(name: 'name') String get name;@JsonKey(name: 'value') String get value;@JsonKey(name: 'dev_name') String get devName;@JsonKey(name: 'dev_man') String get devMan;
/// Create a copy of RedeemParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RedeemParametersCopyWith<RedeemParameters> get copyWith => _$RedeemParametersCopyWithImpl<RedeemParameters>(this as RedeemParameters, _$identity);

  /// Serializes this RedeemParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RedeemParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.devName, devName) || other.devName == devName)&&(identical(other.devMan, devMan) || other.devMan == devMan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username,name,value,devName,devMan);

@override
String toString() {
  return 'RedeemParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username, name: $name, value: $value, devName: $devName, devMan: $devMan)';
}


}

/// @nodoc
abstract mixin class $RedeemParametersCopyWith<$Res>  {
  factory $RedeemParametersCopyWith(RedeemParameters value, $Res Function(RedeemParameters) _then) = _$RedeemParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username,@JsonKey(name: 'name') String name,@JsonKey(name: 'value') String value,@JsonKey(name: 'dev_name') String devName,@JsonKey(name: 'dev_man') String devMan
});




}
/// @nodoc
class _$RedeemParametersCopyWithImpl<$Res>
    implements $RedeemParametersCopyWith<$Res> {
  _$RedeemParametersCopyWithImpl(this._self, this._then);

  final RedeemParameters _self;
  final $Res Function(RedeemParameters) _then;

/// Create a copy of RedeemParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientId = null,Object? accountId = null,Object? accessToken = null,Object? username = null,Object? name = null,Object? value = null,Object? devName = null,Object? devMan = null,}) {
  return _then(_self.copyWith(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,devName: null == devName ? _self.devName : devName // ignore: cast_nullable_to_non_nullable
as String,devMan: null == devMan ? _self.devMan : devMan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RedeemParameters].
extension RedeemParametersPatterns on RedeemParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RedeemParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RedeemParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RedeemParameters value)  $default,){
final _that = this;
switch (_that) {
case _RedeemParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RedeemParameters value)?  $default,){
final _that = this;
switch (_that) {
case _RedeemParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username, @JsonKey(name: 'name')  String name, @JsonKey(name: 'value')  String value, @JsonKey(name: 'dev_name')  String devName, @JsonKey(name: 'dev_man')  String devMan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RedeemParameters() when $default != null:
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username,_that.name,_that.value,_that.devName,_that.devMan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username, @JsonKey(name: 'name')  String name, @JsonKey(name: 'value')  String value, @JsonKey(name: 'dev_name')  String devName, @JsonKey(name: 'dev_man')  String devMan)  $default,) {final _that = this;
switch (_that) {
case _RedeemParameters():
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username,_that.name,_that.value,_that.devName,_that.devMan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username, @JsonKey(name: 'name')  String name, @JsonKey(name: 'value')  String value, @JsonKey(name: 'dev_name')  String devName, @JsonKey(name: 'dev_man')  String devMan)?  $default,) {final _that = this;
switch (_that) {
case _RedeemParameters() when $default != null:
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username,_that.name,_that.value,_that.devName,_that.devMan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RedeemParameters extends RedeemParameters {
  const _RedeemParameters({@JsonKey(name: 'clientId') required this.clientId, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'user') required this.username, @JsonKey(name: 'name') required this.name, @JsonKey(name: 'value') required this.value, @JsonKey(name: 'dev_name') required this.devName, @JsonKey(name: 'dev_man') required this.devMan}): super._();
  factory _RedeemParameters.fromJson(Map<String, dynamic> json) => _$RedeemParametersFromJson(json);

@override@JsonKey(name: 'clientId') final  int clientId;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'user') final  String username;
@override@JsonKey(name: 'name') final  String name;
@override@JsonKey(name: 'value') final  String value;
@override@JsonKey(name: 'dev_name') final  String devName;
@override@JsonKey(name: 'dev_man') final  String devMan;

/// Create a copy of RedeemParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RedeemParametersCopyWith<_RedeemParameters> get copyWith => __$RedeemParametersCopyWithImpl<_RedeemParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RedeemParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RedeemParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value)&&(identical(other.devName, devName) || other.devName == devName)&&(identical(other.devMan, devMan) || other.devMan == devMan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username,name,value,devName,devMan);

@override
String toString() {
  return 'RedeemParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username, name: $name, value: $value, devName: $devName, devMan: $devMan)';
}


}

/// @nodoc
abstract mixin class _$RedeemParametersCopyWith<$Res> implements $RedeemParametersCopyWith<$Res> {
  factory _$RedeemParametersCopyWith(_RedeemParameters value, $Res Function(_RedeemParameters) _then) = __$RedeemParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username,@JsonKey(name: 'name') String name,@JsonKey(name: 'value') String value,@JsonKey(name: 'dev_name') String devName,@JsonKey(name: 'dev_man') String devMan
});




}
/// @nodoc
class __$RedeemParametersCopyWithImpl<$Res>
    implements _$RedeemParametersCopyWith<$Res> {
  __$RedeemParametersCopyWithImpl(this._self, this._then);

  final _RedeemParameters _self;
  final $Res Function(_RedeemParameters) _then;

/// Create a copy of RedeemParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? accountId = null,Object? accessToken = null,Object? username = null,Object? name = null,Object? value = null,Object? devName = null,Object? devMan = null,}) {
  return _then(_RedeemParameters(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,devName: null == devName ? _self.devName : devName // ignore: cast_nullable_to_non_nullable
as String,devMan: null == devMan ? _self.devMan : devMan // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
