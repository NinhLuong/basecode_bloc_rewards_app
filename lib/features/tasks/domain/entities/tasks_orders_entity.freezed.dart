// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_orders_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksOrdersEntity {

 List<TaskOrderEntity> get orders;
/// Create a copy of TasksOrdersEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksOrdersEntityCopyWith<TasksOrdersEntity> get copyWith => _$TasksOrdersEntityCopyWithImpl<TasksOrdersEntity>(this as TasksOrdersEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksOrdersEntity&&const DeepCollectionEquality().equals(other.orders, orders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders));

@override
String toString() {
  return 'TasksOrdersEntity(orders: $orders)';
}


}

/// @nodoc
abstract mixin class $TasksOrdersEntityCopyWith<$Res>  {
  factory $TasksOrdersEntityCopyWith(TasksOrdersEntity value, $Res Function(TasksOrdersEntity) _then) = _$TasksOrdersEntityCopyWithImpl;
@useResult
$Res call({
 List<TaskOrderEntity> orders
});




}
/// @nodoc
class _$TasksOrdersEntityCopyWithImpl<$Res>
    implements $TasksOrdersEntityCopyWith<$Res> {
  _$TasksOrdersEntityCopyWithImpl(this._self, this._then);

  final TasksOrdersEntity _self;
  final $Res Function(TasksOrdersEntity) _then;

/// Create a copy of TasksOrdersEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,}) {
  return _then(_self.copyWith(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<TaskOrderEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TasksOrdersEntity].
extension TasksOrdersEntityPatterns on TasksOrdersEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TasksOrdersEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TasksOrdersEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TasksOrdersEntity value)  $default,){
final _that = this;
switch (_that) {
case _TasksOrdersEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TasksOrdersEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TasksOrdersEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TaskOrderEntity> orders)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TasksOrdersEntity() when $default != null:
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TaskOrderEntity> orders)  $default,) {final _that = this;
switch (_that) {
case _TasksOrdersEntity():
return $default(_that.orders);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TaskOrderEntity> orders)?  $default,) {final _that = this;
switch (_that) {
case _TasksOrdersEntity() when $default != null:
return $default(_that.orders);case _:
  return null;

}
}

}

/// @nodoc


class _TasksOrdersEntity extends TasksOrdersEntity {
  const _TasksOrdersEntity({required final  List<TaskOrderEntity> orders}): _orders = orders,super._();
  

 final  List<TaskOrderEntity> _orders;
@override List<TaskOrderEntity> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}


/// Create a copy of TasksOrdersEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksOrdersEntityCopyWith<_TasksOrdersEntity> get copyWith => __$TasksOrdersEntityCopyWithImpl<_TasksOrdersEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksOrdersEntity&&const DeepCollectionEquality().equals(other._orders, _orders));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders));

@override
String toString() {
  return 'TasksOrdersEntity(orders: $orders)';
}


}

/// @nodoc
abstract mixin class _$TasksOrdersEntityCopyWith<$Res> implements $TasksOrdersEntityCopyWith<$Res> {
  factory _$TasksOrdersEntityCopyWith(_TasksOrdersEntity value, $Res Function(_TasksOrdersEntity) _then) = __$TasksOrdersEntityCopyWithImpl;
@override @useResult
$Res call({
 List<TaskOrderEntity> orders
});




}
/// @nodoc
class __$TasksOrdersEntityCopyWithImpl<$Res>
    implements _$TasksOrdersEntityCopyWith<$Res> {
  __$TasksOrdersEntityCopyWithImpl(this._self, this._then);

  final _TasksOrdersEntity _self;
  final $Res Function(_TasksOrdersEntity) _then;

/// Create a copy of TasksOrdersEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,}) {
  return _then(_TasksOrdersEntity(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<TaskOrderEntity>,
  ));
}


}

/// @nodoc
mixin _$TaskOrderEntity {

 String get taskName; DateTime get timestamp; String get price; OrderStatus get status;
/// Create a copy of TaskOrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskOrderEntityCopyWith<TaskOrderEntity> get copyWith => _$TaskOrderEntityCopyWithImpl<TaskOrderEntity>(this as TaskOrderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskOrderEntity&&(identical(other.taskName, taskName) || other.taskName == taskName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,taskName,timestamp,price,status);

@override
String toString() {
  return 'TaskOrderEntity(taskName: $taskName, timestamp: $timestamp, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class $TaskOrderEntityCopyWith<$Res>  {
  factory $TaskOrderEntityCopyWith(TaskOrderEntity value, $Res Function(TaskOrderEntity) _then) = _$TaskOrderEntityCopyWithImpl;
@useResult
$Res call({
 String taskName, DateTime timestamp, String price, OrderStatus status
});




}
/// @nodoc
class _$TaskOrderEntityCopyWithImpl<$Res>
    implements $TaskOrderEntityCopyWith<$Res> {
  _$TaskOrderEntityCopyWithImpl(this._self, this._then);

  final TaskOrderEntity _self;
  final $Res Function(TaskOrderEntity) _then;

/// Create a copy of TaskOrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? taskName = null,Object? timestamp = null,Object? price = null,Object? status = null,}) {
  return _then(_self.copyWith(
taskName: null == taskName ? _self.taskName : taskName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskOrderEntity].
extension TaskOrderEntityPatterns on TaskOrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskOrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskOrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskOrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _TaskOrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskOrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TaskOrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String taskName,  DateTime timestamp,  String price,  OrderStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskOrderEntity() when $default != null:
return $default(_that.taskName,_that.timestamp,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String taskName,  DateTime timestamp,  String price,  OrderStatus status)  $default,) {final _that = this;
switch (_that) {
case _TaskOrderEntity():
return $default(_that.taskName,_that.timestamp,_that.price,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String taskName,  DateTime timestamp,  String price,  OrderStatus status)?  $default,) {final _that = this;
switch (_that) {
case _TaskOrderEntity() when $default != null:
return $default(_that.taskName,_that.timestamp,_that.price,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _TaskOrderEntity extends TaskOrderEntity {
  const _TaskOrderEntity({required this.taskName, required this.timestamp, required this.price, required this.status}): super._();
  

@override final  String taskName;
@override final  DateTime timestamp;
@override final  String price;
@override final  OrderStatus status;

/// Create a copy of TaskOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskOrderEntityCopyWith<_TaskOrderEntity> get copyWith => __$TaskOrderEntityCopyWithImpl<_TaskOrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskOrderEntity&&(identical(other.taskName, taskName) || other.taskName == taskName)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,taskName,timestamp,price,status);

@override
String toString() {
  return 'TaskOrderEntity(taskName: $taskName, timestamp: $timestamp, price: $price, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TaskOrderEntityCopyWith<$Res> implements $TaskOrderEntityCopyWith<$Res> {
  factory _$TaskOrderEntityCopyWith(_TaskOrderEntity value, $Res Function(_TaskOrderEntity) _then) = __$TaskOrderEntityCopyWithImpl;
@override @useResult
$Res call({
 String taskName, DateTime timestamp, String price, OrderStatus status
});




}
/// @nodoc
class __$TaskOrderEntityCopyWithImpl<$Res>
    implements _$TaskOrderEntityCopyWith<$Res> {
  __$TaskOrderEntityCopyWithImpl(this._self, this._then);

  final _TaskOrderEntity _self;
  final $Res Function(_TaskOrderEntity) _then;

/// Create a copy of TaskOrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? taskName = null,Object? timestamp = null,Object? price = null,Object? status = null,}) {
  return _then(_TaskOrderEntity(
taskName: null == taskName ? _self.taskName : taskName // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OrderStatus,
  ));
}


}

// dart format on
