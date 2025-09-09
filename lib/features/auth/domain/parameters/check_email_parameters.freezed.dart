// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckEmailParameters {

@JsonKey(name: 'email') String get email;@JsonKey(name: 'clientId') int get clientId;
/// Create a copy of CheckEmailParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailParametersCopyWith<CheckEmailParameters> get copyWith => _$CheckEmailParametersCopyWithImpl<CheckEmailParameters>(this as CheckEmailParameters, _$identity);

  /// Serializes this CheckEmailParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailParameters&&(identical(other.email, email) || other.email == email)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,clientId);

@override
String toString() {
  return 'CheckEmailParameters(email: $email, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $CheckEmailParametersCopyWith<$Res>  {
  factory $CheckEmailParametersCopyWith(CheckEmailParameters value, $Res Function(CheckEmailParameters) _then) = _$CheckEmailParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email') String email,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class _$CheckEmailParametersCopyWithImpl<$Res>
    implements $CheckEmailParametersCopyWith<$Res> {
  _$CheckEmailParametersCopyWithImpl(this._self, this._then);

  final CheckEmailParameters _self;
  final $Res Function(CheckEmailParameters) _then;

/// Create a copy of CheckEmailParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? clientId = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckEmailParameters].
extension CheckEmailParametersPatterns on CheckEmailParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckEmailParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckEmailParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckEmailParameters value)  $default,){
final _that = this;
switch (_that) {
case _CheckEmailParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckEmailParameters value)?  $default,){
final _that = this;
switch (_that) {
case _CheckEmailParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'clientId')  int clientId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckEmailParameters() when $default != null:
return $default(_that.email,_that.clientId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'clientId')  int clientId)  $default,) {final _that = this;
switch (_that) {
case _CheckEmailParameters():
return $default(_that.email,_that.clientId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'email')  String email, @JsonKey(name: 'clientId')  int clientId)?  $default,) {final _that = this;
switch (_that) {
case _CheckEmailParameters() when $default != null:
return $default(_that.email,_that.clientId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckEmailParameters extends CheckEmailParameters {
  const _CheckEmailParameters({@JsonKey(name: 'email') required this.email, @JsonKey(name: 'clientId') this.clientId = AppConstants.clientId}): super._();
  factory _CheckEmailParameters.fromJson(Map<String, dynamic> json) => _$CheckEmailParametersFromJson(json);

@override@JsonKey(name: 'email') final  String email;
@override@JsonKey(name: 'clientId') final  int clientId;

/// Create a copy of CheckEmailParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckEmailParametersCopyWith<_CheckEmailParameters> get copyWith => __$CheckEmailParametersCopyWithImpl<_CheckEmailParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckEmailParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckEmailParameters&&(identical(other.email, email) || other.email == email)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,clientId);

@override
String toString() {
  return 'CheckEmailParameters(email: $email, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$CheckEmailParametersCopyWith<$Res> implements $CheckEmailParametersCopyWith<$Res> {
  factory _$CheckEmailParametersCopyWith(_CheckEmailParameters value, $Res Function(_CheckEmailParameters) _then) = __$CheckEmailParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email') String email,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class __$CheckEmailParametersCopyWithImpl<$Res>
    implements _$CheckEmailParametersCopyWith<$Res> {
  __$CheckEmailParametersCopyWithImpl(this._self, this._then);

  final _CheckEmailParameters _self;
  final $Res Function(_CheckEmailParameters) _then;

/// Create a copy of CheckEmailParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? clientId = null,}) {
  return _then(_CheckEmailParameters(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
