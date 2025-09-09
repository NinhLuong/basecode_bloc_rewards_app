// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserve_comment_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReserveCommentParameters {

 String get accessToken; String get accountId; String get username; int get clientId; String get taskId;
/// Create a copy of ReserveCommentParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReserveCommentParametersCopyWith<ReserveCommentParameters> get copyWith => _$ReserveCommentParametersCopyWithImpl<ReserveCommentParameters>(this as ReserveCommentParameters, _$identity);

  /// Serializes this ReserveCommentParameters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReserveCommentParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.taskId, taskId) || other.taskId == taskId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,taskId);

@override
String toString() {
  return 'ReserveCommentParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $ReserveCommentParametersCopyWith<$Res>  {
  factory $ReserveCommentParametersCopyWith(ReserveCommentParameters value, $Res Function(ReserveCommentParameters) _then) = _$ReserveCommentParametersCopyWithImpl;
@useResult
$Res call({
 String accessToken, String accountId, String username, int clientId, String taskId
});




}
/// @nodoc
class _$ReserveCommentParametersCopyWithImpl<$Res>
    implements $ReserveCommentParametersCopyWith<$Res> {
  _$ReserveCommentParametersCopyWithImpl(this._self, this._then);

  final ReserveCommentParameters _self;
  final $Res Function(ReserveCommentParameters) _then;

/// Create a copy of ReserveCommentParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? taskId = null,}) {
  return _then(_self.copyWith(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReserveCommentParameters].
extension ReserveCommentParametersPatterns on ReserveCommentParameters {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReserveCommentParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReserveCommentParameters() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReserveCommentParameters value)  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentParameters():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReserveCommentParameters value)?  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentParameters() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReserveCommentParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId)  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentParameters():
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String accessToken,  String accountId,  String username,  int clientId,  String taskId)?  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentParameters() when $default != null:
return $default(_that.accessToken,_that.accountId,_that.username,_that.clientId,_that.taskId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReserveCommentParameters extends ReserveCommentParameters {
  const _ReserveCommentParameters({required this.accessToken, required this.accountId, required this.username, required this.clientId, required this.taskId}): super._();
  factory _ReserveCommentParameters.fromJson(Map<String, dynamic> json) => _$ReserveCommentParametersFromJson(json);

@override final  String accessToken;
@override final  String accountId;
@override final  String username;
@override final  int clientId;
@override final  String taskId;

/// Create a copy of ReserveCommentParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReserveCommentParametersCopyWith<_ReserveCommentParameters> get copyWith => __$ReserveCommentParametersCopyWithImpl<_ReserveCommentParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReserveCommentParametersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentParameters&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.accountId, accountId) || other.accountId == accountId)&&(identical(other.username, username) || other.username == username)&&(identical(other.clientId, clientId) || other.clientId == clientId)&&(identical(other.taskId, taskId) || other.taskId == taskId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,accountId,username,clientId,taskId);

@override
String toString() {
  return 'ReserveCommentParameters(accessToken: $accessToken, accountId: $accountId, username: $username, clientId: $clientId, taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class _$ReserveCommentParametersCopyWith<$Res> implements $ReserveCommentParametersCopyWith<$Res> {
  factory _$ReserveCommentParametersCopyWith(_ReserveCommentParameters value, $Res Function(_ReserveCommentParameters) _then) = __$ReserveCommentParametersCopyWithImpl;
@override @useResult
$Res call({
 String accessToken, String accountId, String username, int clientId, String taskId
});




}
/// @nodoc
class __$ReserveCommentParametersCopyWithImpl<$Res>
    implements _$ReserveCommentParametersCopyWith<$Res> {
  __$ReserveCommentParametersCopyWithImpl(this._self, this._then);

  final _ReserveCommentParameters _self;
  final $Res Function(_ReserveCommentParameters) _then;

/// Create a copy of ReserveCommentParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? accountId = null,Object? username = null,Object? clientId = null,Object? taskId = null,}) {
  return _then(_ReserveCommentParameters(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,accountId: null == accountId ? _self.accountId : accountId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,clientId: null == clientId ? _self.clientId : clientId // ignore: cast_nullable_to_non_nullable
as int,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
