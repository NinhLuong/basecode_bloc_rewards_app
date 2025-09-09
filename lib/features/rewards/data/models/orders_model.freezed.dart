// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'user') String? get user;@JsonKey(name: 'transactions') List<Order>? get transactions;
/// Create a copy of OrdersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersModelCopyWith<OrdersModel> get copyWith => _$OrdersModelCopyWithImpl<OrdersModel>(this as OrdersModel, _$identity);

  /// Serializes this OrdersModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('transactions', transactions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,user,const DeepCollectionEquality().hash(transactions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersModel(error: $error, errorCode: $errorCode, user: $user, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $OrdersModelCopyWith<$Res>  {
  factory $OrdersModelCopyWith(OrdersModel value, $Res Function(OrdersModel) _then) = _$OrdersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'user') String? user,@JsonKey(name: 'transactions') List<Order>? transactions
});




}
/// @nodoc
class _$OrdersModelCopyWithImpl<$Res>
    implements $OrdersModelCopyWith<$Res> {
  _$OrdersModelCopyWithImpl(this._self, this._then);

  final OrdersModel _self;
  final $Res Function(OrdersModel) _then;

/// Create a copy of OrdersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? user = freezed,Object? transactions = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Order>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersModel].
extension OrdersModelPatterns on OrdersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Order>? transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.user,_that.transactions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Order>? transactions)  $default,) {final _that = this;
switch (_that) {
case _OrdersModel():
return $default(_that.error,_that.errorCode,_that.user,_that.transactions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Order>? transactions)?  $default,) {final _that = this;
switch (_that) {
case _OrdersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.user,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersModel extends OrdersModel with DiagnosticableTreeMixin {
  const _OrdersModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'user') this.user, @JsonKey(name: 'transactions') final  List<Order>? transactions}): _transactions = transactions,super._();
  factory _OrdersModel.fromJson(Map<String, dynamic> json) => _$OrdersModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'user') final  String? user;
 final  List<Order>? _transactions;
@override@JsonKey(name: 'transactions') List<Order>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of OrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersModelCopyWith<_OrdersModel> get copyWith => __$OrdersModelCopyWithImpl<_OrdersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrdersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('transactions', transactions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,user,const DeepCollectionEquality().hash(_transactions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrdersModel(error: $error, errorCode: $errorCode, user: $user, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$OrdersModelCopyWith<$Res> implements $OrdersModelCopyWith<$Res> {
  factory _$OrdersModelCopyWith(_OrdersModel value, $Res Function(_OrdersModel) _then) = __$OrdersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'user') String? user,@JsonKey(name: 'transactions') List<Order>? transactions
});




}
/// @nodoc
class __$OrdersModelCopyWithImpl<$Res>
    implements _$OrdersModelCopyWith<$Res> {
  __$OrdersModelCopyWithImpl(this._self, this._then);

  final _OrdersModel _self;
  final $Res Function(_OrdersModel) _then;

/// Create a copy of OrdersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? user = freezed,Object? transactions = freezed,}) {
  return _then(_OrdersModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Order>?,
  ));
}


}


/// @nodoc
mixin _$Order implements DiagnosticableTreeMixin {

@JsonKey(name: 'tn_id') String? get tnId;@JsonKey(name: 'tn_type') String? get tnType;@JsonKey(name: 'tn_name') String? get tnName;@JsonKey(name: 'tn_points') String? get tnPoints;@JsonKey(name: 'tn_to') String? get tnTo;@JsonKey(name: 'tn_date') String? get tnDate;@JsonKey(name: 'tn_status') String? get tnStatus;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Order'))
    ..add(DiagnosticsProperty('tnId', tnId))..add(DiagnosticsProperty('tnType', tnType))..add(DiagnosticsProperty('tnName', tnName))..add(DiagnosticsProperty('tnPoints', tnPoints))..add(DiagnosticsProperty('tnTo', tnTo))..add(DiagnosticsProperty('tnDate', tnDate))..add(DiagnosticsProperty('tnStatus', tnStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.tnId, tnId) || other.tnId == tnId)&&(identical(other.tnType, tnType) || other.tnType == tnType)&&(identical(other.tnName, tnName) || other.tnName == tnName)&&(identical(other.tnPoints, tnPoints) || other.tnPoints == tnPoints)&&(identical(other.tnTo, tnTo) || other.tnTo == tnTo)&&(identical(other.tnDate, tnDate) || other.tnDate == tnDate)&&(identical(other.tnStatus, tnStatus) || other.tnStatus == tnStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tnId,tnType,tnName,tnPoints,tnTo,tnDate,tnStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Order(tnId: $tnId, tnType: $tnType, tnName: $tnName, tnPoints: $tnPoints, tnTo: $tnTo, tnDate: $tnDate, tnStatus: $tnStatus)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tn_id') String? tnId,@JsonKey(name: 'tn_type') String? tnType,@JsonKey(name: 'tn_name') String? tnName,@JsonKey(name: 'tn_points') String? tnPoints,@JsonKey(name: 'tn_to') String? tnTo,@JsonKey(name: 'tn_date') String? tnDate,@JsonKey(name: 'tn_status') String? tnStatus
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tnId = freezed,Object? tnType = freezed,Object? tnName = freezed,Object? tnPoints = freezed,Object? tnTo = freezed,Object? tnDate = freezed,Object? tnStatus = freezed,}) {
  return _then(_self.copyWith(
tnId: freezed == tnId ? _self.tnId : tnId // ignore: cast_nullable_to_non_nullable
as String?,tnType: freezed == tnType ? _self.tnType : tnType // ignore: cast_nullable_to_non_nullable
as String?,tnName: freezed == tnName ? _self.tnName : tnName // ignore: cast_nullable_to_non_nullable
as String?,tnPoints: freezed == tnPoints ? _self.tnPoints : tnPoints // ignore: cast_nullable_to_non_nullable
as String?,tnTo: freezed == tnTo ? _self.tnTo : tnTo // ignore: cast_nullable_to_non_nullable
as String?,tnDate: freezed == tnDate ? _self.tnDate : tnDate // ignore: cast_nullable_to_non_nullable
as String?,tnStatus: freezed == tnStatus ? _self.tnStatus : tnStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_to')  String? tnTo, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnTo,_that.tnDate,_that.tnStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_to')  String? tnTo, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnTo,_that.tnDate,_that.tnStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_to')  String? tnTo, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnTo,_that.tnDate,_that.tnStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Order extends Order with DiagnosticableTreeMixin {
  const _Order({@JsonKey(name: 'tn_id') this.tnId, @JsonKey(name: 'tn_type') this.tnType, @JsonKey(name: 'tn_name') this.tnName, @JsonKey(name: 'tn_points') this.tnPoints, @JsonKey(name: 'tn_to') this.tnTo, @JsonKey(name: 'tn_date') this.tnDate, @JsonKey(name: 'tn_status') this.tnStatus}): super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@JsonKey(name: 'tn_id') final  String? tnId;
@override@JsonKey(name: 'tn_type') final  String? tnType;
@override@JsonKey(name: 'tn_name') final  String? tnName;
@override@JsonKey(name: 'tn_points') final  String? tnPoints;
@override@JsonKey(name: 'tn_to') final  String? tnTo;
@override@JsonKey(name: 'tn_date') final  String? tnDate;
@override@JsonKey(name: 'tn_status') final  String? tnStatus;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Order'))
    ..add(DiagnosticsProperty('tnId', tnId))..add(DiagnosticsProperty('tnType', tnType))..add(DiagnosticsProperty('tnName', tnName))..add(DiagnosticsProperty('tnPoints', tnPoints))..add(DiagnosticsProperty('tnTo', tnTo))..add(DiagnosticsProperty('tnDate', tnDate))..add(DiagnosticsProperty('tnStatus', tnStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.tnId, tnId) || other.tnId == tnId)&&(identical(other.tnType, tnType) || other.tnType == tnType)&&(identical(other.tnName, tnName) || other.tnName == tnName)&&(identical(other.tnPoints, tnPoints) || other.tnPoints == tnPoints)&&(identical(other.tnTo, tnTo) || other.tnTo == tnTo)&&(identical(other.tnDate, tnDate) || other.tnDate == tnDate)&&(identical(other.tnStatus, tnStatus) || other.tnStatus == tnStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tnId,tnType,tnName,tnPoints,tnTo,tnDate,tnStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Order(tnId: $tnId, tnType: $tnType, tnName: $tnName, tnPoints: $tnPoints, tnTo: $tnTo, tnDate: $tnDate, tnStatus: $tnStatus)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tn_id') String? tnId,@JsonKey(name: 'tn_type') String? tnType,@JsonKey(name: 'tn_name') String? tnName,@JsonKey(name: 'tn_points') String? tnPoints,@JsonKey(name: 'tn_to') String? tnTo,@JsonKey(name: 'tn_date') String? tnDate,@JsonKey(name: 'tn_status') String? tnStatus
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tnId = freezed,Object? tnType = freezed,Object? tnName = freezed,Object? tnPoints = freezed,Object? tnTo = freezed,Object? tnDate = freezed,Object? tnStatus = freezed,}) {
  return _then(_Order(
tnId: freezed == tnId ? _self.tnId : tnId // ignore: cast_nullable_to_non_nullable
as String?,tnType: freezed == tnType ? _self.tnType : tnType // ignore: cast_nullable_to_non_nullable
as String?,tnName: freezed == tnName ? _self.tnName : tnName // ignore: cast_nullable_to_non_nullable
as String?,tnPoints: freezed == tnPoints ? _self.tnPoints : tnPoints // ignore: cast_nullable_to_non_nullable
as String?,tnTo: freezed == tnTo ? _self.tnTo : tnTo // ignore: cast_nullable_to_non_nullable
as String?,tnDate: freezed == tnDate ? _self.tnDate : tnDate // ignore: cast_nullable_to_non_nullable
as String?,tnStatus: freezed == tnStatus ? _self.tnStatus : tnStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
