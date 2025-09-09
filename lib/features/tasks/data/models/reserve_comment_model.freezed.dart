// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reserve_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReserveCommentModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'data') CommentModel? get data;
/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReserveCommentModelCopyWith<ReserveCommentModel> get copyWith => _$ReserveCommentModelCopyWithImpl<ReserveCommentModel>(this as ReserveCommentModel, _$identity);

  /// Serializes this ReserveCommentModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReserveCommentModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReserveCommentModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReserveCommentModel(error: $error, errorCode: $errorCode, data: $data)';
}


}

/// @nodoc
abstract mixin class $ReserveCommentModelCopyWith<$Res>  {
  factory $ReserveCommentModelCopyWith(ReserveCommentModel value, $Res Function(ReserveCommentModel) _then) = _$ReserveCommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'data') CommentModel? data
});


$CommentModelCopyWith<$Res>? get data;

}
/// @nodoc
class _$ReserveCommentModelCopyWithImpl<$Res>
    implements $ReserveCommentModelCopyWith<$Res> {
  _$ReserveCommentModelCopyWithImpl(this._self, this._then);

  final ReserveCommentModel _self;
  final $Res Function(ReserveCommentModel) _then;

/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommentModel?,
  ));
}
/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommentModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReserveCommentModel].
extension ReserveCommentModelPatterns on ReserveCommentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReserveCommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReserveCommentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReserveCommentModel value)  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReserveCommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReserveCommentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'data')  CommentModel? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReserveCommentModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'data')  CommentModel? data)  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentModel():
return $default(_that.error,_that.errorCode,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'data')  CommentModel? data)?  $default,) {final _that = this;
switch (_that) {
case _ReserveCommentModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReserveCommentModel extends ReserveCommentModel with DiagnosticableTreeMixin {
  const _ReserveCommentModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'data') this.data}): super._();
  factory _ReserveCommentModel.fromJson(Map<String, dynamic> json) => _$ReserveCommentModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'data') final  CommentModel? data;

/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReserveCommentModelCopyWith<_ReserveCommentModel> get copyWith => __$ReserveCommentModelCopyWithImpl<_ReserveCommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReserveCommentModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReserveCommentModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReserveCommentModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReserveCommentModel(error: $error, errorCode: $errorCode, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ReserveCommentModelCopyWith<$Res> implements $ReserveCommentModelCopyWith<$Res> {
  factory _$ReserveCommentModelCopyWith(_ReserveCommentModel value, $Res Function(_ReserveCommentModel) _then) = __$ReserveCommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'data') CommentModel? data
});


@override $CommentModelCopyWith<$Res>? get data;

}
/// @nodoc
class __$ReserveCommentModelCopyWithImpl<$Res>
    implements _$ReserveCommentModelCopyWith<$Res> {
  __$ReserveCommentModelCopyWithImpl(this._self, this._then);

  final _ReserveCommentModel _self;
  final $Res Function(_ReserveCommentModel) _then;

/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? data = freezed,}) {
  return _then(_ReserveCommentModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CommentModel?,
  ));
}

/// Create a copy of ReserveCommentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentModelCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $CommentModelCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$CommentModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'comment_id') String? get commentId;@JsonKey(name: 'comment_task_id') String? get commentTaskId;@JsonKey(name: 'comment_user_id') String? get commentUserId;@JsonKey(name: 'comment_text') String? get commentText;@JsonKey(name: 'comment_status') String? get commentStatus;@JsonKey(name: 'comment_last_changed') String? get commentLastChanged;@JsonKey(name: 'comment_created_at') String? get commentCreatedAt;
/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentModelCopyWith<CommentModel> get copyWith => _$CommentModelCopyWithImpl<CommentModel>(this as CommentModel, _$identity);

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommentModel'))
    ..add(DiagnosticsProperty('commentId', commentId))..add(DiagnosticsProperty('commentTaskId', commentTaskId))..add(DiagnosticsProperty('commentUserId', commentUserId))..add(DiagnosticsProperty('commentText', commentText))..add(DiagnosticsProperty('commentStatus', commentStatus))..add(DiagnosticsProperty('commentLastChanged', commentLastChanged))..add(DiagnosticsProperty('commentCreatedAt', commentCreatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentModel&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.commentTaskId, commentTaskId) || other.commentTaskId == commentTaskId)&&(identical(other.commentUserId, commentUserId) || other.commentUserId == commentUserId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.commentStatus, commentStatus) || other.commentStatus == commentStatus)&&(identical(other.commentLastChanged, commentLastChanged) || other.commentLastChanged == commentLastChanged)&&(identical(other.commentCreatedAt, commentCreatedAt) || other.commentCreatedAt == commentCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commentId,commentTaskId,commentUserId,commentText,commentStatus,commentLastChanged,commentCreatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommentModel(commentId: $commentId, commentTaskId: $commentTaskId, commentUserId: $commentUserId, commentText: $commentText, commentStatus: $commentStatus, commentLastChanged: $commentLastChanged, commentCreatedAt: $commentCreatedAt)';
}


}

/// @nodoc
abstract mixin class $CommentModelCopyWith<$Res>  {
  factory $CommentModelCopyWith(CommentModel value, $Res Function(CommentModel) _then) = _$CommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'comment_id') String? commentId,@JsonKey(name: 'comment_task_id') String? commentTaskId,@JsonKey(name: 'comment_user_id') String? commentUserId,@JsonKey(name: 'comment_text') String? commentText,@JsonKey(name: 'comment_status') String? commentStatus,@JsonKey(name: 'comment_last_changed') String? commentLastChanged,@JsonKey(name: 'comment_created_at') String? commentCreatedAt
});




}
/// @nodoc
class _$CommentModelCopyWithImpl<$Res>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._self, this._then);

  final CommentModel _self;
  final $Res Function(CommentModel) _then;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentId = freezed,Object? commentTaskId = freezed,Object? commentUserId = freezed,Object? commentText = freezed,Object? commentStatus = freezed,Object? commentLastChanged = freezed,Object? commentCreatedAt = freezed,}) {
  return _then(_self.copyWith(
commentId: freezed == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String?,commentTaskId: freezed == commentTaskId ? _self.commentTaskId : commentTaskId // ignore: cast_nullable_to_non_nullable
as String?,commentUserId: freezed == commentUserId ? _self.commentUserId : commentUserId // ignore: cast_nullable_to_non_nullable
as String?,commentText: freezed == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String?,commentStatus: freezed == commentStatus ? _self.commentStatus : commentStatus // ignore: cast_nullable_to_non_nullable
as String?,commentLastChanged: freezed == commentLastChanged ? _self.commentLastChanged : commentLastChanged // ignore: cast_nullable_to_non_nullable
as String?,commentCreatedAt: freezed == commentCreatedAt ? _self.commentCreatedAt : commentCreatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentModel].
extension CommentModelPatterns on CommentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'comment_task_id')  String? commentTaskId, @JsonKey(name: 'comment_user_id')  String? commentUserId, @JsonKey(name: 'comment_text')  String? commentText, @JsonKey(name: 'comment_status')  String? commentStatus, @JsonKey(name: 'comment_last_changed')  String? commentLastChanged, @JsonKey(name: 'comment_created_at')  String? commentCreatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
return $default(_that.commentId,_that.commentTaskId,_that.commentUserId,_that.commentText,_that.commentStatus,_that.commentLastChanged,_that.commentCreatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'comment_task_id')  String? commentTaskId, @JsonKey(name: 'comment_user_id')  String? commentUserId, @JsonKey(name: 'comment_text')  String? commentText, @JsonKey(name: 'comment_status')  String? commentStatus, @JsonKey(name: 'comment_last_changed')  String? commentLastChanged, @JsonKey(name: 'comment_created_at')  String? commentCreatedAt)  $default,) {final _that = this;
switch (_that) {
case _CommentModel():
return $default(_that.commentId,_that.commentTaskId,_that.commentUserId,_that.commentText,_that.commentStatus,_that.commentLastChanged,_that.commentCreatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'comment_id')  String? commentId, @JsonKey(name: 'comment_task_id')  String? commentTaskId, @JsonKey(name: 'comment_user_id')  String? commentUserId, @JsonKey(name: 'comment_text')  String? commentText, @JsonKey(name: 'comment_status')  String? commentStatus, @JsonKey(name: 'comment_last_changed')  String? commentLastChanged, @JsonKey(name: 'comment_created_at')  String? commentCreatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
return $default(_that.commentId,_that.commentTaskId,_that.commentUserId,_that.commentText,_that.commentStatus,_that.commentLastChanged,_that.commentCreatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentModel extends CommentModel with DiagnosticableTreeMixin {
  const _CommentModel({@JsonKey(name: 'comment_id') this.commentId, @JsonKey(name: 'comment_task_id') this.commentTaskId, @JsonKey(name: 'comment_user_id') this.commentUserId, @JsonKey(name: 'comment_text') this.commentText, @JsonKey(name: 'comment_status') this.commentStatus, @JsonKey(name: 'comment_last_changed') this.commentLastChanged, @JsonKey(name: 'comment_created_at') this.commentCreatedAt}): super._();
  factory _CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

@override@JsonKey(name: 'comment_id') final  String? commentId;
@override@JsonKey(name: 'comment_task_id') final  String? commentTaskId;
@override@JsonKey(name: 'comment_user_id') final  String? commentUserId;
@override@JsonKey(name: 'comment_text') final  String? commentText;
@override@JsonKey(name: 'comment_status') final  String? commentStatus;
@override@JsonKey(name: 'comment_last_changed') final  String? commentLastChanged;
@override@JsonKey(name: 'comment_created_at') final  String? commentCreatedAt;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentModelCopyWith<_CommentModel> get copyWith => __$CommentModelCopyWithImpl<_CommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CommentModel'))
    ..add(DiagnosticsProperty('commentId', commentId))..add(DiagnosticsProperty('commentTaskId', commentTaskId))..add(DiagnosticsProperty('commentUserId', commentUserId))..add(DiagnosticsProperty('commentText', commentText))..add(DiagnosticsProperty('commentStatus', commentStatus))..add(DiagnosticsProperty('commentLastChanged', commentLastChanged))..add(DiagnosticsProperty('commentCreatedAt', commentCreatedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentModel&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.commentTaskId, commentTaskId) || other.commentTaskId == commentTaskId)&&(identical(other.commentUserId, commentUserId) || other.commentUserId == commentUserId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.commentStatus, commentStatus) || other.commentStatus == commentStatus)&&(identical(other.commentLastChanged, commentLastChanged) || other.commentLastChanged == commentLastChanged)&&(identical(other.commentCreatedAt, commentCreatedAt) || other.commentCreatedAt == commentCreatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,commentId,commentTaskId,commentUserId,commentText,commentStatus,commentLastChanged,commentCreatedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CommentModel(commentId: $commentId, commentTaskId: $commentTaskId, commentUserId: $commentUserId, commentText: $commentText, commentStatus: $commentStatus, commentLastChanged: $commentLastChanged, commentCreatedAt: $commentCreatedAt)';
}


}

/// @nodoc
abstract mixin class _$CommentModelCopyWith<$Res> implements $CommentModelCopyWith<$Res> {
  factory _$CommentModelCopyWith(_CommentModel value, $Res Function(_CommentModel) _then) = __$CommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'comment_id') String? commentId,@JsonKey(name: 'comment_task_id') String? commentTaskId,@JsonKey(name: 'comment_user_id') String? commentUserId,@JsonKey(name: 'comment_text') String? commentText,@JsonKey(name: 'comment_status') String? commentStatus,@JsonKey(name: 'comment_last_changed') String? commentLastChanged,@JsonKey(name: 'comment_created_at') String? commentCreatedAt
});




}
/// @nodoc
class __$CommentModelCopyWithImpl<$Res>
    implements _$CommentModelCopyWith<$Res> {
  __$CommentModelCopyWithImpl(this._self, this._then);

  final _CommentModel _self;
  final $Res Function(_CommentModel) _then;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentId = freezed,Object? commentTaskId = freezed,Object? commentUserId = freezed,Object? commentText = freezed,Object? commentStatus = freezed,Object? commentLastChanged = freezed,Object? commentCreatedAt = freezed,}) {
  return _then(_CommentModel(
commentId: freezed == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String?,commentTaskId: freezed == commentTaskId ? _self.commentTaskId : commentTaskId // ignore: cast_nullable_to_non_nullable
as String?,commentUserId: freezed == commentUserId ? _self.commentUserId : commentUserId // ignore: cast_nullable_to_non_nullable
as String?,commentText: freezed == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String?,commentStatus: freezed == commentStatus ? _self.commentStatus : commentStatus // ignore: cast_nullable_to_non_nullable
as String?,commentLastChanged: freezed == commentLastChanged ? _self.commentLastChanged : commentLastChanged // ignore: cast_nullable_to_non_nullable
as String?,commentCreatedAt: freezed == commentCreatedAt ? _self.commentCreatedAt : commentCreatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
