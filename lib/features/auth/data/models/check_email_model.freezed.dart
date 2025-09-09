// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckEmailModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'error_message') String? get errorMessage;@JsonKey(name: 'verify_code') String? get verifyCode;
/// Create a copy of CheckEmailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckEmailModelCopyWith<CheckEmailModel> get copyWith => _$CheckEmailModelCopyWithImpl<CheckEmailModel>(this as CheckEmailModel, _$identity);

  /// Serializes this CheckEmailModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckEmailModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('verifyCode', verifyCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckEmailModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,errorMessage,verifyCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckEmailModel(error: $error, errorCode: $errorCode, errorMessage: $errorMessage, verifyCode: $verifyCode)';
}


}

/// @nodoc
abstract mixin class $CheckEmailModelCopyWith<$Res>  {
  factory $CheckEmailModelCopyWith(CheckEmailModel value, $Res Function(CheckEmailModel) _then) = _$CheckEmailModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'verify_code') String? verifyCode
});




}
/// @nodoc
class _$CheckEmailModelCopyWithImpl<$Res>
    implements $CheckEmailModelCopyWith<$Res> {
  _$CheckEmailModelCopyWithImpl(this._self, this._then);

  final CheckEmailModel _self;
  final $Res Function(CheckEmailModel) _then;

/// Create a copy of CheckEmailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? errorMessage = freezed,Object? verifyCode = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CheckEmailModel].
extension CheckEmailModelPatterns on CheckEmailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CheckEmailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckEmailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CheckEmailModel value)  $default,){
final _that = this;
switch (_that) {
case _CheckEmailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CheckEmailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CheckEmailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'verify_code')  String? verifyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckEmailModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.errorMessage,_that.verifyCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'verify_code')  String? verifyCode)  $default,) {final _that = this;
switch (_that) {
case _CheckEmailModel():
return $default(_that.error,_that.errorCode,_that.errorMessage,_that.verifyCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'verify_code')  String? verifyCode)?  $default,) {final _that = this;
switch (_that) {
case _CheckEmailModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.errorMessage,_that.verifyCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CheckEmailModel extends CheckEmailModel with DiagnosticableTreeMixin {
  const _CheckEmailModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'error_message') this.errorMessage, @JsonKey(name: 'verify_code') this.verifyCode}): super._();
  factory _CheckEmailModel.fromJson(Map<String, dynamic> json) => _$CheckEmailModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'error_message') final  String? errorMessage;
@override@JsonKey(name: 'verify_code') final  String? verifyCode;

/// Create a copy of CheckEmailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckEmailModelCopyWith<_CheckEmailModel> get copyWith => __$CheckEmailModelCopyWithImpl<_CheckEmailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckEmailModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CheckEmailModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('verifyCode', verifyCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckEmailModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,errorMessage,verifyCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CheckEmailModel(error: $error, errorCode: $errorCode, errorMessage: $errorMessage, verifyCode: $verifyCode)';
}


}

/// @nodoc
abstract mixin class _$CheckEmailModelCopyWith<$Res> implements $CheckEmailModelCopyWith<$Res> {
  factory _$CheckEmailModelCopyWith(_CheckEmailModel value, $Res Function(_CheckEmailModel) _then) = __$CheckEmailModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'verify_code') String? verifyCode
});




}
/// @nodoc
class __$CheckEmailModelCopyWithImpl<$Res>
    implements _$CheckEmailModelCopyWith<$Res> {
  __$CheckEmailModelCopyWithImpl(this._self, this._then);

  final _CheckEmailModel _self;
  final $Res Function(_CheckEmailModel) _then;

/// Create a copy of CheckEmailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? errorMessage = freezed,Object? verifyCode = freezed,}) {
  return _then(_CheckEmailModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
