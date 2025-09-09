// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginParameters {

@JsonKey(name: 'username') String get username;@JsonKey(name: 'password') String get password;@JsonKey(name: 'clientId') int get clientId;
/// Create a copy of LoginParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginParametersCopyWith<LoginParameters> get copyWith => _$LoginParametersCopyWithImpl<LoginParameters>(this as LoginParameters, _$identity);

  /// Serializes this LoginParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginParameters&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,clientId);

@override
String toString() {
  return 'LoginParameters(username: $username, password: $password, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $LoginParametersCopyWith<$Res>  {
  factory $LoginParametersCopyWith(LoginParameters value, $Res Function(LoginParameters) _then) = _$LoginParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'password') String password,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class _$LoginParametersCopyWithImpl<$Res>
    implements $LoginParametersCopyWith<$Res> {
  _$LoginParametersCopyWithImpl(this._self, this._then);

  final LoginParameters _self;
  final $Res Function(LoginParameters) _then;

/// Create a copy of LoginParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,Object? clientId = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginParameters].
extension LoginParametersPatterns on LoginParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginParameters value)  $default,){
final _that = this;
switch (_that) {
case _LoginParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginParameters value)?  $default,){
final _that = this;
switch (_that) {
case _LoginParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'password')  String password, @JsonKey(name: 'clientId')  int clientId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginParameters() when $default != null:
return $default(_that.username,_that.password,_that.clientId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'password')  String password, @JsonKey(name: 'clientId')  int clientId)  $default,) {final _that = this;
switch (_that) {
case _LoginParameters():
return $default(_that.username,_that.password,_that.clientId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'password')  String password, @JsonKey(name: 'clientId')  int clientId)?  $default,) {final _that = this;
switch (_that) {
case _LoginParameters() when $default != null:
return $default(_that.username,_that.password,_that.clientId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginParameters extends LoginParameters {
  const _LoginParameters({@JsonKey(name: 'username') required this.username, @JsonKey(name: 'password') required this.password, @JsonKey(name: 'clientId') this.clientId = AppConstants.clientId}): super._();
  factory _LoginParameters.fromJson(Map<String, dynamic> json) => _$LoginParametersFromJson(json);

@override@JsonKey(name: 'username') final  String username;
@override@JsonKey(name: 'password') final  String password;
@override@JsonKey(name: 'clientId') final  int clientId;

/// Create a copy of LoginParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginParametersCopyWith<_LoginParameters> get copyWith => __$LoginParametersCopyWithImpl<_LoginParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginParameters&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password,clientId);

@override
String toString() {
  return 'LoginParameters(username: $username, password: $password, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$LoginParametersCopyWith<$Res> implements $LoginParametersCopyWith<$Res> {
  factory _$LoginParametersCopyWith(_LoginParameters value, $Res Function(_LoginParameters) _then) = __$LoginParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'password') String password,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class __$LoginParametersCopyWithImpl<$Res>
    implements _$LoginParametersCopyWith<$Res> {
  __$LoginParametersCopyWithImpl(this._self, this._then);

  final _LoginParameters _self;
  final $Res Function(_LoginParameters) _then;

/// Create a copy of LoginParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? clientId = null,}) {
  return _then(_LoginParameters(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
