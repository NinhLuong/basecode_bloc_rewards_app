// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteAccountParameters {

@JsonKey(name: 'accessToken') String get accessToken;@JsonKey(name: 'accountId') String get accountId;@JsonKey(name: 'clientId') int get clientId;
/// Create a copy of DeleteAccountParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountParametersCopyWith<DeleteAccountParameters> get copyWith => _$DeleteAccountParametersCopyWithImpl<DeleteAccountParameters>(this as DeleteAccountParameters, _$identity);

  /// Serializes this DeleteAccountParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,clientId);

@override
String toString() {
  return 'DeleteAccountParameters(accessToken: $accessToken, accountId: $accountId, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountParametersCopyWith<$Res>  {
  factory $DeleteAccountParametersCopyWith(DeleteAccountParameters value, $Res Function(DeleteAccountParameters) _then) = _$DeleteAccountParametersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class _$DeleteAccountParametersCopyWithImpl<$Res>
    implements $DeleteAccountParametersCopyWith<$Res> {
  _$DeleteAccountParametersCopyWithImpl(this._self, this._then);

  final DeleteAccountParameters _self;
  final $Res Function(DeleteAccountParameters) _then;

/// Create a copy of DeleteAccountParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? clientId = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteAccountParameters].
extension DeleteAccountParametersPatterns on DeleteAccountParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteAccountParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteAccountParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteAccountParameters value)  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteAccountParameters value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'clientId')  int clientId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteAccountParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.clientId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'clientId')  int clientId)  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountParameters():
return $default(_that.accessToken,_that.accountId,_that.clientId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'accessToken')  String accessToken, @JsonKey(name: 'accountId')  String accountId, @JsonKey(name: 'clientId')  int clientId)?  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.clientId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteAccountParameters extends DeleteAccountParameters {
  const _DeleteAccountParameters({@JsonKey(name: 'accessToken') required this.accessToken, @JsonKey(name: 'accountId') required this.accountId, @JsonKey(name: 'clientId') required this.clientId}): super._();
  factory _DeleteAccountParameters.fromJson(Map<String, dynamic> json) => _$DeleteAccountParametersFromJson(json);

@override@JsonKey(name: 'accessToken') final  String accessToken;
@override@JsonKey(name: 'accountId') final  String accountId;
@override@JsonKey(name: 'clientId') final  int clientId;

/// Create a copy of DeleteAccountParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAccountParametersCopyWith<_DeleteAccountParameters> get copyWith => __$DeleteAccountParametersCopyWithImpl<_DeleteAccountParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteAccountParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAccountParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.clientId, clientId) || other.clientId == clientId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,clientId);

@override
String toString() {
  return 'DeleteAccountParameters(accessToken: $accessToken, accountId: $accountId, clientId: $clientId)';
}


}

/// @nodoc
abstract mixin class _$DeleteAccountParametersCopyWith<$Res> implements $DeleteAccountParametersCopyWith<$Res> {
  factory _$DeleteAccountParametersCopyWith(_DeleteAccountParameters value, $Res Function(_DeleteAccountParameters) _then) = __$DeleteAccountParametersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'accessToken') String accessToken,@JsonKey(name: 'accountId') String accountId,@JsonKey(name: 'clientId') int clientId
});




}
/// @nodoc
class __$DeleteAccountParametersCopyWithImpl<$Res>
    implements _$DeleteAccountParametersCopyWith<$Res> {
  __$DeleteAccountParametersCopyWithImpl(this._self, this._then);

  final _DeleteAccountParameters _self;
  final $Res Function(_DeleteAccountParameters) _then;

/// Create a copy of DeleteAccountParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? clientId = null,}) {
  return _then(_DeleteAccountParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
