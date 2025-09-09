// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeParameters {

@JsonKey(name: 'clientId') int get clientId;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'user') String get username;
/// Create a copy of HomeParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeParametersCopyWith<HomeParameters> get copyWith => _$HomeParametersCopyWithImpl<HomeParameters>(this as HomeParameters, _$identity);

  /// Serializes this HomeParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username);

@override
String toString() {
  return 'HomeParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username)';
}


}

/// @nodoc
abstract mixin class $HomeParametersCopyWith<$Res>  {
  factory $HomeParametersCopyWith(HomeParameters value, $Res Function(HomeParameters) _then) = _$HomeParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username
});




}
/// @nodoc
class _$HomeParametersCopyWithImpl<$Res>
    implements $HomeParametersCopyWith<$Res> {
  _$HomeParametersCopyWithImpl(this._self, this._then);

  final HomeParameters _self;
  final $Res Function(HomeParameters) _then;

/// Create a copy of HomeParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clientId = null,Object? accountId = null,Object? accessToken = null,Object? username = null,}) {
  return _then(_self.copyWith(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeParameters].
extension HomeParametersPatterns on HomeParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeParameters value)  $default,){
final _that = this;
switch (_that) {
case _HomeParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeParameters value)?  $default,){
final _that = this;
switch (_that) {
case _HomeParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeParameters() when $default != null:
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username)  $default,) {final _that = this;
switch (_that) {
case _HomeParameters():
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'clientId')  int clientId, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'user')  String username)?  $default,) {final _that = this;
switch (_that) {
case _HomeParameters() when $default != null:
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeParameters extends HomeParameters {
  const _HomeParameters({@JsonKey(name: 'clientId') required this.clientId, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'user') required this.username}): super._();
  factory _HomeParameters.fromJson(Map<String, dynamic> json) => _$HomeParametersFromJson(json);

@override@JsonKey(name: 'clientId') final  int clientId;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'user') final  String username;

/// Create a copy of HomeParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeParametersCopyWith<_HomeParameters> get copyWith => __$HomeParametersCopyWithImpl<_HomeParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username);

@override
String toString() {
  return 'HomeParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username)';
}


}

/// @nodoc
abstract mixin class _$HomeParametersCopyWith<$Res> implements $HomeParametersCopyWith<$Res> {
  factory _$HomeParametersCopyWith(_HomeParameters value, $Res Function(_HomeParameters) _then) = __$HomeParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username
});




}
/// @nodoc
class __$HomeParametersCopyWithImpl<$Res>
    implements _$HomeParametersCopyWith<$Res> {
  __$HomeParametersCopyWithImpl(this._self, this._then);

  final _HomeParameters _self;
  final $Res Function(_HomeParameters) _then;

/// Create a copy of HomeParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? accountId = null,Object? accessToken = null,Object? username = null,}) {
  return _then(_HomeParameters(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
