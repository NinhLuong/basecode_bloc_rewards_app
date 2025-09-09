// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payouts_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayoutsParameters {

@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'user') String get username;@JsonKey(name: 'clientId') int get clientId;
/// Create a copy of PayoutsParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayoutsParametersCopyWith<PayoutsParameters> get copyWith => _$PayoutsParametersCopyWithImpl<PayoutsParameters>(this as PayoutsParameters, _$identity);

  /// Serializes this PayoutsParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayoutsParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId);

@override
String toString() {
  return 'PayoutsParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $PayoutsParametersCopyWith<$Res>  {
  factory $PayoutsParametersCopyWith(PayoutsParameters value, $Res Function(PayoutsParameters) _then) = _$PayoutsParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class _$PayoutsParametersCopyWithImpl<$Res>
    implements $PayoutsParametersCopyWith<$Res> {
  _$PayoutsParametersCopyWithImpl(this._self, this._then);

  final PayoutsParameters _self;
  final $Res Function(PayoutsParameters) _then;

/// Create a copy of PayoutsParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PayoutsParameters].
extension PayoutsParametersPatterns on PayoutsParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayoutsParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayoutsParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayoutsParameters value)  $default,){
final _that = this;
switch (_that) {
case _PayoutsParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayoutsParameters value)?  $default,){
final _that = this;
switch (_that) {
case _PayoutsParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayoutsParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId)  $default,) {final _that = this;
switch (_that) {
case _PayoutsParameters():
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId)?  $default,) {final _that = this;
switch (_that) {
case _PayoutsParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayoutsParameters extends PayoutsParameters {
  const _PayoutsParameters({@JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'user') required this.username, @JsonKey(name: 'clientId') required this.clientId}): super._();
  factory _PayoutsParameters.fromJson(Map<String, dynamic> json) => _$PayoutsParametersFromJson(json);

@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'user') final  String username;
@override@JsonKey(name: 'clientId') final  int clientId;

/// Create a copy of PayoutsParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsParametersCopyWith<_PayoutsParameters> get copyWith => __$PayoutsParametersCopyWithImpl<_PayoutsParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayoutsParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId);

@override
String toString() {
  return 'PayoutsParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$PayoutsParametersCopyWith<$Res> implements $PayoutsParametersCopyWith<$Res> {
  factory _$PayoutsParametersCopyWith(_PayoutsParameters value, $Res Function(_PayoutsParameters) _then) = __$PayoutsParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class __$PayoutsParametersCopyWithImpl<$Res>
    implements _$PayoutsParametersCopyWith<$Res> {
  __$PayoutsParametersCopyWithImpl(this._self, this._then);

  final _PayoutsParameters _self;
  final $Res Function(_PayoutsParameters) _then;

/// Create a copy of PayoutsParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,}) {
  return _then(_PayoutsParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
