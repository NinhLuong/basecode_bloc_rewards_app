// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_users_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopUsersParameters {

@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'user') String get username;@JsonKey(name: 'clientId') int get clientId;@JsonKey(name: 'half_month') int get halfMonthValue;
/// Create a copy of TopUsersParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopUsersParametersCopyWith<TopUsersParameters> get copyWith => _$TopUsersParametersCopyWithImpl<TopUsersParameters>(this as TopUsersParameters, _$identity);

  /// Serializes this TopUsersParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopUsersParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.halfMonthValue, halfMonthValue) || other.halfMonthValue == halfMonthValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,halfMonthValue);

@override
String toString() {
  return 'TopUsersParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, halfMonthValue: $halfMonthValue)';
}


}

/// @nodoc
abstract mixin class $TopUsersParametersCopyWith<$Res>  {
  factory $TopUsersParametersCopyWith(TopUsersParameters value, $Res Function(TopUsersParameters) _then) = _$TopUsersParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'half_month') int halfMonthValue
});




}
/// @nodoc
class _$TopUsersParametersCopyWithImpl<$Res>
    implements $TopUsersParametersCopyWith<$Res> {
  _$TopUsersParametersCopyWithImpl(this._self, this._then);

  final TopUsersParameters _self;
  final $Res Function(TopUsersParameters) _then;

/// Create a copy of TopUsersParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? halfMonthValue = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,halfMonthValue: null == halfMonthValue ? _self.halfMonthValue : halfMonthValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TopUsersParameters].
extension TopUsersParametersPatterns on TopUsersParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopUsersParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopUsersParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopUsersParameters value)  $default,){
final _that = this;
switch (_that) {
case _TopUsersParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopUsersParameters value)?  $default,){
final _that = this;
switch (_that) {
case _TopUsersParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'half_month')  int halfMonthValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopUsersParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.halfMonthValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'half_month')  int halfMonthValue)  $default,) {final _that = this;
switch (_that) {
case _TopUsersParameters():
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.halfMonthValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'user')  String username, @JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'half_month')  int halfMonthValue)?  $default,) {final _that = this;
switch (_that) {
case _TopUsersParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.halfMonthValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopUsersParameters extends TopUsersParameters {
  const _TopUsersParameters({@JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'user') required this.username, @JsonKey(name: 'clientId') required this.clientId, @JsonKey(name: 'half_month') required this.halfMonthValue}): super._();
  factory _TopUsersParameters.fromJson(Map<String, dynamic> json) => _$TopUsersParametersFromJson(json);

@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'user') final  String username;
@override@JsonKey(name: 'clientId') final  int clientId;
@override@JsonKey(name: 'half_month') final  int halfMonthValue;

/// Create a copy of TopUsersParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersParametersCopyWith<_TopUsersParameters> get copyWith => __$TopUsersParametersCopyWithImpl<_TopUsersParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopUsersParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.halfMonthValue, halfMonthValue) || other.halfMonthValue == halfMonthValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,halfMonthValue);

@override
String toString() {
  return 'TopUsersParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, halfMonthValue: $halfMonthValue)';
}


}

/// @nodoc
abstract mixin class _$TopUsersParametersCopyWith<$Res> implements $TopUsersParametersCopyWith<$Res> {
  factory _$TopUsersParametersCopyWith(_TopUsersParameters value, $Res Function(_TopUsersParameters) _then) = __$TopUsersParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'user') String username,@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'half_month') int halfMonthValue
});




}
/// @nodoc
class __$TopUsersParametersCopyWithImpl<$Res>
    implements _$TopUsersParametersCopyWith<$Res> {
  __$TopUsersParametersCopyWithImpl(this._self, this._then);

  final _TopUsersParameters _self;
  final $Res Function(_TopUsersParameters) _then;

/// Create a copy of TopUsersParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? halfMonthValue = null,}) {
  return _then(_TopUsersParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,halfMonthValue: null == halfMonthValue ? _self.halfMonthValue : halfMonthValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
