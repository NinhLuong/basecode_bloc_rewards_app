// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckEmailEntity {

 String? get verifyCode;
/// Create a copy of CheckEmailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailEntityCopyWith<CheckEmailEntity> get copyWith => _$CheckEmailEntityCopyWithImpl<CheckEmailEntity>(this as CheckEmailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailEntity&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode));
}


@override
int get hashCode => Object.hash(runtimeType,verifyCode);

@override
String toString() {
  return 'CheckEmailEntity(verifyCode: $verifyCode)';
}


}

/// @nodoc
abstract mixin class $CheckEmailEntityCopyWith<$Res>  {
  factory $CheckEmailEntityCopyWith(CheckEmailEntity value, $Res Function(CheckEmailEntity) _then) = _$CheckEmailEntityCopyWithImpl;
@useResult
$Res call({
 String? verifyCode
});




}
/// @nodoc
class _$CheckEmailEntityCopyWithImpl<$Res>
    implements $CheckEmailEntityCopyWith<$Res> {
  _$CheckEmailEntityCopyWithImpl(this._self, this._then);

  final CheckEmailEntity _self;
  final $Res Function(CheckEmailEntity) _then;

/// Create a copy of CheckEmailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verifyCode = freezed,}) {
  return _then(_self.copyWith(
verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckEmailEntity].
extension CheckEmailEntityPatterns on CheckEmailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckEmailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckEmailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckEmailEntity value)  $default,){
final _that = this;
switch (_that) {
case _CheckEmailEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckEmailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CheckEmailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? verifyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckEmailEntity() when $default != null:
return $default(_that.verifyCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? verifyCode)  $default,) {final _that = this;
switch (_that) {
case _CheckEmailEntity():
return $default(_that.verifyCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? verifyCode)?  $default,) {final _that = this;
switch (_that) {
case _CheckEmailEntity() when $default != null:
return $default(_that.verifyCode);case _:
  return null;

}
}

}

/// @nodoc


class _CheckEmailEntity extends CheckEmailEntity {
  const _CheckEmailEntity({required this.verifyCode}): super._();
  

@override final  String? verifyCode;

/// Create a copy of CheckEmailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckEmailEntityCopyWith<_CheckEmailEntity> get copyWith => __$CheckEmailEntityCopyWithImpl<_CheckEmailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckEmailEntity&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode));
}


@override
int get hashCode => Object.hash(runtimeType,verifyCode);

@override
String toString() {
  return 'CheckEmailEntity(verifyCode: $verifyCode)';
}


}

/// @nodoc
abstract mixin class _$CheckEmailEntityCopyWith<$Res> implements $CheckEmailEntityCopyWith<$Res> {
  factory _$CheckEmailEntityCopyWith(_CheckEmailEntity value, $Res Function(_CheckEmailEntity) _then) = __$CheckEmailEntityCopyWithImpl;
@override @useResult
$Res call({
 String? verifyCode
});




}
/// @nodoc
class __$CheckEmailEntityCopyWithImpl<$Res>
    implements _$CheckEmailEntityCopyWith<$Res> {
  __$CheckEmailEntityCopyWithImpl(this._self, this._then);

  final _CheckEmailEntity _self;
  final $Res Function(_CheckEmailEntity) _then;

/// Create a copy of CheckEmailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verifyCode = freezed,}) {
  return _then(_CheckEmailEntity(
verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
