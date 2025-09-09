// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TasksModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'tasks') List<TaskModel>? get tasks;
/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksModelCopyWith<TasksModel> get copyWith => _$TasksModelCopyWithImpl<TasksModel>(this as TasksModel, _$identity);

  /// Serializes this TasksModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TasksModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('tasks', tasks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.tasks, tasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(tasks));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TasksModel(error: $error, errorCode: $errorCode, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $TasksModelCopyWith<$Res>  {
  factory $TasksModelCopyWith(TasksModel value, $Res Function(TasksModel) _then) = _$TasksModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'tasks') List<TaskModel>? tasks
});




}
/// @nodoc
class _$TasksModelCopyWithImpl<$Res>
    implements $TasksModelCopyWith<$Res> {
  _$TasksModelCopyWithImpl(this._self, this._then);

  final TasksModel _self;
  final $Res Function(TasksModel) _then;

/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? tasks = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,tasks: freezed == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksModel].
extension TasksModelPatterns on TasksModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksModel value)  $default,){
final _that = this;
switch (_that) {
case _TasksModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksModel value)?  $default,){
final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'tasks')  List<TaskModel>? tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'tasks')  List<TaskModel>? tasks)  $default,) {final _that = this;
switch (_that) {
case _TasksModel():
return $default(_that.error,_that.errorCode,_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'tasks')  List<TaskModel>? tasks)?  $default,) {final _that = this;
switch (_that) {
case _TasksModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.tasks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TasksModel extends TasksModel with DiagnosticableTreeMixin {
  const _TasksModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'tasks') final  List<TaskModel>? tasks}): _tasks = tasks,super._();
  factory _TasksModel.fromJson(Map<String, dynamic> json) => _$TasksModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
 final  List<TaskModel>? _tasks;
@override@JsonKey(name: 'tasks') List<TaskModel>? get tasks {
  final value = _tasks;
  if (value == null) return null;
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksModelCopyWith<_TasksModel> get copyWith => __$TasksModelCopyWithImpl<_TasksModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TasksModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TasksModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('tasks', tasks));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(_tasks));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TasksModel(error: $error, errorCode: $errorCode, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$TasksModelCopyWith<$Res> implements $TasksModelCopyWith<$Res> {
  factory _$TasksModelCopyWith(_TasksModel value, $Res Function(_TasksModel) _then) = __$TasksModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'tasks') List<TaskModel>? tasks
});




}
/// @nodoc
class __$TasksModelCopyWithImpl<$Res>
    implements _$TasksModelCopyWith<$Res> {
  __$TasksModelCopyWithImpl(this._self, this._then);

  final _TasksModel _self;
  final $Res Function(_TasksModel) _then;

/// Create a copy of TasksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? tasks = freezed,}) {
  return _then(_TasksModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,tasks: freezed == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>?,
  ));
}


}


/// @nodoc
mixin _$TaskModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'task_id') String? get taskId;@JsonKey(name: 'task_title') String? get taskTitle;@JsonKey(name: 'task_sub_title') String? get taskSubTitle;@JsonKey(name: 'task_description') String? get taskDescription;@JsonKey(name: 'task_image') String? get taskImage;@JsonKey(name: 'task_url') String? get taskUrl;@JsonKey(name: 'task_price') String? get taskPrice;@JsonKey(name: 'task_status') String? get taskStatus;
/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskModelCopyWith<TaskModel> get copyWith => _$TaskModelCopyWithImpl<TaskModel>(this as TaskModel, _$identity);

  /// Serializes this TaskModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TaskModel'))
    ..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('taskTitle', taskTitle))..add(DiagnosticsProperty('taskSubTitle', taskSubTitle))..add(DiagnosticsProperty('taskDescription', taskDescription))..add(DiagnosticsProperty('taskImage', taskImage))..add(DiagnosticsProperty('taskUrl', taskUrl))..add(DiagnosticsProperty('taskPrice', taskPrice))..add(DiagnosticsProperty('taskStatus', taskStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskModel&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.taskTitle, taskTitle) || other.taskTitle == taskTitle)&&(identical(other.taskSubTitle, taskSubTitle) || other.taskSubTitle == taskSubTitle)&&(identical(other.taskDescription, taskDescription) || other.taskDescription == taskDescription)&&(identical(other.taskImage, taskImage) || other.taskImage == taskImage)&&(identical(other.taskUrl, taskUrl) || other.taskUrl == taskUrl)&&(identical(other.taskPrice, taskPrice) || other.taskPrice == taskPrice)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taskId,taskTitle,taskSubTitle,taskDescription,taskImage,taskUrl,taskPrice,taskStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TaskModel(taskId: $taskId, taskTitle: $taskTitle, taskSubTitle: $taskSubTitle, taskDescription: $taskDescription, taskImage: $taskImage, taskUrl: $taskUrl, taskPrice: $taskPrice, taskStatus: $taskStatus)';
}


}

/// @nodoc
abstract mixin class $TaskModelCopyWith<$Res>  {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) _then) = _$TaskModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'task_id') String? taskId,@JsonKey(name: 'task_title') String? taskTitle,@JsonKey(name: 'task_sub_title') String? taskSubTitle,@JsonKey(name: 'task_description') String? taskDescription,@JsonKey(name: 'task_image') String? taskImage,@JsonKey(name: 'task_url') String? taskUrl,@JsonKey(name: 'task_price') String? taskPrice,@JsonKey(name: 'task_status') String? taskStatus
});




}
/// @nodoc
class _$TaskModelCopyWithImpl<$Res>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._self, this._then);

  final TaskModel _self;
  final $Res Function(TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskId = freezed,Object? taskTitle = freezed,Object? taskSubTitle = freezed,Object? taskDescription = freezed,Object? taskImage = freezed,Object? taskUrl = freezed,Object? taskPrice = freezed,Object? taskStatus = freezed,}) {
  return _then(_self.copyWith(
taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,taskTitle: freezed == taskTitle ? _self.taskTitle : taskTitle // ignore: cast_nullable_to_non_nullable
as String?,taskSubTitle: freezed == taskSubTitle ? _self.taskSubTitle : taskSubTitle // ignore: cast_nullable_to_non_nullable
as String?,taskDescription: freezed == taskDescription ? _self.taskDescription : taskDescription // ignore: cast_nullable_to_non_nullable
as String?,taskImage: freezed == taskImage ? _self.taskImage : taskImage // ignore: cast_nullable_to_non_nullable
as String?,taskUrl: freezed == taskUrl ? _self.taskUrl : taskUrl // ignore: cast_nullable_to_non_nullable
as String?,taskPrice: freezed == taskPrice ? _self.taskPrice : taskPrice // ignore: cast_nullable_to_non_nullable
as String?,taskStatus: freezed == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskModel].
extension TaskModelPatterns on TaskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskModel value)  $default,){
final _that = this;
switch (_that) {
case _TaskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskModel value)?  $default,){
final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_title')  String? taskTitle, @JsonKey(name: 'task_sub_title')  String? taskSubTitle, @JsonKey(name: 'task_description')  String? taskDescription, @JsonKey(name: 'task_image')  String? taskImage, @JsonKey(name: 'task_url')  String? taskUrl, @JsonKey(name: 'task_price')  String? taskPrice, @JsonKey(name: 'task_status')  String? taskStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
return $default(_that.taskId,_that.taskTitle,_that.taskSubTitle,_that.taskDescription,_that.taskImage,_that.taskUrl,_that.taskPrice,_that.taskStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_title')  String? taskTitle, @JsonKey(name: 'task_sub_title')  String? taskSubTitle, @JsonKey(name: 'task_description')  String? taskDescription, @JsonKey(name: 'task_image')  String? taskImage, @JsonKey(name: 'task_url')  String? taskUrl, @JsonKey(name: 'task_price')  String? taskPrice, @JsonKey(name: 'task_status')  String? taskStatus)  $default,) {final _that = this;
switch (_that) {
case _TaskModel():
return $default(_that.taskId,_that.taskTitle,_that.taskSubTitle,_that.taskDescription,_that.taskImage,_that.taskUrl,_that.taskPrice,_that.taskStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'task_id')  String? taskId, @JsonKey(name: 'task_title')  String? taskTitle, @JsonKey(name: 'task_sub_title')  String? taskSubTitle, @JsonKey(name: 'task_description')  String? taskDescription, @JsonKey(name: 'task_image')  String? taskImage, @JsonKey(name: 'task_url')  String? taskUrl, @JsonKey(name: 'task_price')  String? taskPrice, @JsonKey(name: 'task_status')  String? taskStatus)?  $default,) {final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
return $default(_that.taskId,_that.taskTitle,_that.taskSubTitle,_that.taskDescription,_that.taskImage,_that.taskUrl,_that.taskPrice,_that.taskStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskModel extends TaskModel with DiagnosticableTreeMixin {
  const _TaskModel({@JsonKey(name: 'task_id') this.taskId, @JsonKey(name: 'task_title') this.taskTitle, @JsonKey(name: 'task_sub_title') this.taskSubTitle, @JsonKey(name: 'task_description') this.taskDescription, @JsonKey(name: 'task_image') this.taskImage, @JsonKey(name: 'task_url') this.taskUrl, @JsonKey(name: 'task_price') this.taskPrice, @JsonKey(name: 'task_status') this.taskStatus}): super._();
  factory _TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

@override@JsonKey(name: 'task_id') final  String? taskId;
@override@JsonKey(name: 'task_title') final  String? taskTitle;
@override@JsonKey(name: 'task_sub_title') final  String? taskSubTitle;
@override@JsonKey(name: 'task_description') final  String? taskDescription;
@override@JsonKey(name: 'task_image') final  String? taskImage;
@override@JsonKey(name: 'task_url') final  String? taskUrl;
@override@JsonKey(name: 'task_price') final  String? taskPrice;
@override@JsonKey(name: 'task_status') final  String? taskStatus;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskModelCopyWith<_TaskModel> get copyWith => __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TaskModel'))
    ..add(DiagnosticsProperty('taskId', taskId))..add(DiagnosticsProperty('taskTitle', taskTitle))..add(DiagnosticsProperty('taskSubTitle', taskSubTitle))..add(DiagnosticsProperty('taskDescription', taskDescription))..add(DiagnosticsProperty('taskImage', taskImage))..add(DiagnosticsProperty('taskUrl', taskUrl))..add(DiagnosticsProperty('taskPrice', taskPrice))..add(DiagnosticsProperty('taskStatus', taskStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskModel&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.taskTitle, taskTitle) || other.taskTitle == taskTitle)&&(identical(other.taskSubTitle, taskSubTitle) || other.taskSubTitle == taskSubTitle)&&(identical(other.taskDescription, taskDescription) || other.taskDescription == taskDescription)&&(identical(other.taskImage, taskImage) || other.taskImage == taskImage)&&(identical(other.taskUrl, taskUrl) || other.taskUrl == taskUrl)&&(identical(other.taskPrice, taskPrice) || other.taskPrice == taskPrice)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,taskId,taskTitle,taskSubTitle,taskDescription,taskImage,taskUrl,taskPrice,taskStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TaskModel(taskId: $taskId, taskTitle: $taskTitle, taskSubTitle: $taskSubTitle, taskDescription: $taskDescription, taskImage: $taskImage, taskUrl: $taskUrl, taskPrice: $taskPrice, taskStatus: $taskStatus)';
}


}

/// @nodoc
abstract mixin class _$TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(_TaskModel value, $Res Function(_TaskModel) _then) = __$TaskModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'task_id') String? taskId,@JsonKey(name: 'task_title') String? taskTitle,@JsonKey(name: 'task_sub_title') String? taskSubTitle,@JsonKey(name: 'task_description') String? taskDescription,@JsonKey(name: 'task_image') String? taskImage,@JsonKey(name: 'task_url') String? taskUrl,@JsonKey(name: 'task_price') String? taskPrice,@JsonKey(name: 'task_status') String? taskStatus
});




}
/// @nodoc
class __$TaskModelCopyWithImpl<$Res>
    implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(this._self, this._then);

  final _TaskModel _self;
  final $Res Function(_TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskId = freezed,Object? taskTitle = freezed,Object? taskSubTitle = freezed,Object? taskDescription = freezed,Object? taskImage = freezed,Object? taskUrl = freezed,Object? taskPrice = freezed,Object? taskStatus = freezed,}) {
  return _then(_TaskModel(
taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,taskTitle: freezed == taskTitle ? _self.taskTitle : taskTitle // ignore: cast_nullable_to_non_nullable
as String?,taskSubTitle: freezed == taskSubTitle ? _self.taskSubTitle : taskSubTitle // ignore: cast_nullable_to_non_nullable
as String?,taskDescription: freezed == taskDescription ? _self.taskDescription : taskDescription // ignore: cast_nullable_to_non_nullable
as String?,taskImage: freezed == taskImage ? _self.taskImage : taskImage // ignore: cast_nullable_to_non_nullable
as String?,taskUrl: freezed == taskUrl ? _self.taskUrl : taskUrl // ignore: cast_nullable_to_non_nullable
as String?,taskPrice: freezed == taskPrice ? _self.taskPrice : taskPrice // ignore: cast_nullable_to_non_nullable
as String?,taskStatus: freezed == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
