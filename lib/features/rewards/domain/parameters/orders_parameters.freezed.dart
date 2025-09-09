// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersParameters {

@JsonKey(name: 'clientId') int get clientId;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'user') String get username;
/// Create a copy of OrdersParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersParametersCopyWith<OrdersParameters> get copyWith => _$OrdersParametersCopyWithImpl<OrdersParameters>(this as OrdersParameters, _$identity);

  /// Serializes this OrdersParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username);

@override
String toString() {
  return 'OrdersParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username)';
}


}

/// @nodoc
abstract mixin class $OrdersParametersCopyWith<$Res>  {
  factory $OrdersParametersCopyWith(OrdersParameters value, $Res Function(OrdersParameters) _then) = _$OrdersParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username
});




}
/// @nodoc
class _$OrdersParametersCopyWithImpl<$Res>
    implements $OrdersParametersCopyWith<$Res> {
  _$OrdersParametersCopyWithImpl(this._self, this._then);

  final OrdersParameters _self;
  final $Res Function(OrdersParameters) _then;

/// Create a copy of OrdersParameters
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


/// Adds pattern-matching-related methods to [OrdersParameters].
extension OrdersParametersPatterns on OrdersParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersParameters value)  $default,){
final _that = this;
switch (_that) {
case _OrdersParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersParameters value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersParameters() when $default != null:
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
case _OrdersParameters() when $default != null:
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
case _OrdersParameters():
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
case _OrdersParameters() when $default != null:
return $default(_that.clientId,_that.accountId,_that.accessToken,_that.username);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersParameters extends OrdersParameters {
  const _OrdersParameters({@JsonKey(name: 'clientId') required this.clientId, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'user') required this.username}): super._();
  factory _OrdersParameters.fromJson(Map<String, dynamic> json) => _$OrdersParametersFromJson(json);

@override@JsonKey(name: 'clientId') final  int clientId;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'user') final  String username;

/// Create a copy of OrdersParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersParametersCopyWith<_OrdersParameters> get copyWith => __$OrdersParametersCopyWithImpl<_OrdersParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersParameters&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.username, username) || other.username == username));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clientId,accountId,accessToken,username);

@override
String toString() {
  return 'OrdersParameters(clientId: $clientId, accountId: $accountId, accessToken: $accessToken, username: $username)';
}


}

/// @nodoc
abstract mixin class _$OrdersParametersCopyWith<$Res> implements $OrdersParametersCopyWith<$Res> {
  factory _$OrdersParametersCopyWith(_OrdersParameters value, $Res Function(_OrdersParameters) _then) = __$OrdersParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'clientId') int clientId,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'user') String username
});




}
/// @nodoc
class __$OrdersParametersCopyWithImpl<$Res>
    implements _$OrdersParametersCopyWith<$Res> {
  __$OrdersParametersCopyWithImpl(this._self, this._then);

  final _OrdersParameters _self;
  final $Res Function(_OrdersParameters) _then;

/// Create a copy of OrdersParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clientId = null,Object? accountId = null,Object? accessToken = null,Object? username = null,}) {
  return _then(_OrdersParameters(
clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
