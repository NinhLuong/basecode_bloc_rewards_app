// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionsModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'user') String? get user;@JsonKey(name: 'transactions') List<Transaction>? get transactions;
/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionsModelCopyWith<TransactionsModel> get copyWith => _$TransactionsModelCopyWithImpl<TransactionsModel>(this as TransactionsModel, _$identity);

  /// Serializes this TransactionsModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionsModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('transactions', transactions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionsModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,user,const DeepCollectionEquality().hash(transactions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionsModel(error: $error, errorCode: $errorCode, user: $user, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $TransactionsModelCopyWith<$Res>  {
  factory $TransactionsModelCopyWith(TransactionsModel value, $Res Function(TransactionsModel) _then) = _$TransactionsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'user') String? user,@JsonKey(name: 'transactions') List<Transaction>? transactions
});




}
/// @nodoc
class _$TransactionsModelCopyWithImpl<$Res>
    implements $TransactionsModelCopyWith<$Res> {
  _$TransactionsModelCopyWithImpl(this._self, this._then);

  final TransactionsModel _self;
  final $Res Function(TransactionsModel) _then;

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? user = freezed,Object? transactions = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionsModel].
extension TransactionsModelPatterns on TransactionsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionsModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionsModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Transaction>? transactions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Transaction>? transactions)  $default,) {final _that = this;
switch (_that) {
case _TransactionsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'user')  String? user, @JsonKey(name: 'transactions')  List<Transaction>? transactions)?  $default,) {final _that = this;
switch (_that) {
case _TransactionsModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.user,_that.transactions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionsModel extends TransactionsModel with DiagnosticableTreeMixin {
  const _TransactionsModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'user') this.user, @JsonKey(name: 'transactions') final  List<Transaction>? transactions}): _transactions = transactions,super._();
  factory _TransactionsModel.fromJson(Map<String, dynamic> json) => _$TransactionsModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
@override@JsonKey(name: 'user') final  String? user;
 final  List<Transaction>? _transactions;
@override@JsonKey(name: 'transactions') List<Transaction>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionsModelCopyWith<_TransactionsModel> get copyWith => __$TransactionsModelCopyWithImpl<_TransactionsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionsModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TransactionsModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('user', user))..add(DiagnosticsProperty('transactions', transactions));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionsModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,user,const DeepCollectionEquality().hash(_transactions));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TransactionsModel(error: $error, errorCode: $errorCode, user: $user, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$TransactionsModelCopyWith<$Res> implements $TransactionsModelCopyWith<$Res> {
  factory _$TransactionsModelCopyWith(_TransactionsModel value, $Res Function(_TransactionsModel) _then) = __$TransactionsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'user') String? user,@JsonKey(name: 'transactions') List<Transaction>? transactions
});




}
/// @nodoc
class __$TransactionsModelCopyWithImpl<$Res>
    implements _$TransactionsModelCopyWith<$Res> {
  __$TransactionsModelCopyWithImpl(this._self, this._then);

  final _TransactionsModel _self;
  final $Res Function(_TransactionsModel) _then;

/// Create a copy of TransactionsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? user = freezed,Object? transactions = freezed,}) {
  return _then(_TransactionsModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<Transaction>?,
  ));
}


}


/// @nodoc
mixin _$Transaction implements DiagnosticableTreeMixin {

@JsonKey(name: 'tn_id') String? get tnId;@JsonKey(name: 'tn_type') String? get tnType;@JsonKey(name: 'tn_name') String? get tnName;@JsonKey(name: 'tn_points') String? get tnPoints;@JsonKey(name: 'tn_date') String? get tnDate;@JsonKey(name: 'tn_status') String? get tnStatus;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Transaction'))
    ..add(DiagnosticsProperty('tnId', tnId))..add(DiagnosticsProperty('tnType', tnType))..add(DiagnosticsProperty('tnName', tnName))..add(DiagnosticsProperty('tnPoints', tnPoints))..add(DiagnosticsProperty('tnDate', tnDate))..add(DiagnosticsProperty('tnStatus', tnStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.tnId, tnId) || other.tnId == tnId)&&(identical(other.tnType, tnType) || other.tnType == tnType)&&(identical(other.tnName, tnName) || other.tnName == tnName)&&(identical(other.tnPoints, tnPoints) || other.tnPoints == tnPoints)&&(identical(other.tnDate, tnDate) || other.tnDate == tnDate)&&(identical(other.tnStatus, tnStatus) || other.tnStatus == tnStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tnId,tnType,tnName,tnPoints,tnDate,tnStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Transaction(tnId: $tnId, tnType: $tnType, tnName: $tnName, tnPoints: $tnPoints, tnDate: $tnDate, tnStatus: $tnStatus)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'tn_id') String? tnId,@JsonKey(name: 'tn_type') String? tnType,@JsonKey(name: 'tn_name') String? tnName,@JsonKey(name: 'tn_points') String? tnPoints,@JsonKey(name: 'tn_date') String? tnDate,@JsonKey(name: 'tn_status') String? tnStatus
});




}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tnId = freezed,Object? tnType = freezed,Object? tnName = freezed,Object? tnPoints = freezed,Object? tnDate = freezed,Object? tnStatus = freezed,}) {
  return _then(_self.copyWith(
tnId: freezed == tnId ? _self.tnId : tnId // ignore: cast_nullable_to_non_nullable
as String?,tnType: freezed == tnType ? _self.tnType : tnType // ignore: cast_nullable_to_non_nullable
as String?,tnName: freezed == tnName ? _self.tnName : tnName // ignore: cast_nullable_to_non_nullable
as String?,tnPoints: freezed == tnPoints ? _self.tnPoints : tnPoints // ignore: cast_nullable_to_non_nullable
as String?,tnDate: freezed == tnDate ? _self.tnDate : tnDate // ignore: cast_nullable_to_non_nullable
as String?,tnStatus: freezed == tnStatus ? _self.tnStatus : tnStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnDate,_that.tnStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnDate,_that.tnStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'tn_id')  String? tnId, @JsonKey(name: 'tn_type')  String? tnType, @JsonKey(name: 'tn_name')  String? tnName, @JsonKey(name: 'tn_points')  String? tnPoints, @JsonKey(name: 'tn_date')  String? tnDate, @JsonKey(name: 'tn_status')  String? tnStatus)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.tnId,_that.tnType,_that.tnName,_that.tnPoints,_that.tnDate,_that.tnStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Transaction extends Transaction with DiagnosticableTreeMixin {
  const _Transaction({@JsonKey(name: 'tn_id') this.tnId, @JsonKey(name: 'tn_type') this.tnType, @JsonKey(name: 'tn_name') this.tnName, @JsonKey(name: 'tn_points') this.tnPoints, @JsonKey(name: 'tn_date') this.tnDate, @JsonKey(name: 'tn_status') this.tnStatus}): super._();
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override@JsonKey(name: 'tn_id') final  String? tnId;
@override@JsonKey(name: 'tn_type') final  String? tnType;
@override@JsonKey(name: 'tn_name') final  String? tnName;
@override@JsonKey(name: 'tn_points') final  String? tnPoints;
@override@JsonKey(name: 'tn_date') final  String? tnDate;
@override@JsonKey(name: 'tn_status') final  String? tnStatus;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Transaction'))
    ..add(DiagnosticsProperty('tnId', tnId))..add(DiagnosticsProperty('tnType', tnType))..add(DiagnosticsProperty('tnName', tnName))..add(DiagnosticsProperty('tnPoints', tnPoints))..add(DiagnosticsProperty('tnDate', tnDate))..add(DiagnosticsProperty('tnStatus', tnStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.tnId, tnId) || other.tnId == tnId)&&(identical(other.tnType, tnType) || other.tnType == tnType)&&(identical(other.tnName, tnName) || other.tnName == tnName)&&(identical(other.tnPoints, tnPoints) || other.tnPoints == tnPoints)&&(identical(other.tnDate, tnDate) || other.tnDate == tnDate)&&(identical(other.tnStatus, tnStatus) || other.tnStatus == tnStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,tnId,tnType,tnName,tnPoints,tnDate,tnStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Transaction(tnId: $tnId, tnType: $tnType, tnName: $tnName, tnPoints: $tnPoints, tnDate: $tnDate, tnStatus: $tnStatus)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'tn_id') String? tnId,@JsonKey(name: 'tn_type') String? tnType,@JsonKey(name: 'tn_name') String? tnName,@JsonKey(name: 'tn_points') String? tnPoints,@JsonKey(name: 'tn_date') String? tnDate,@JsonKey(name: 'tn_status') String? tnStatus
});




}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tnId = freezed,Object? tnType = freezed,Object? tnName = freezed,Object? tnPoints = freezed,Object? tnDate = freezed,Object? tnStatus = freezed,}) {
  return _then(_Transaction(
tnId: freezed == tnId ? _self.tnId : tnId // ignore: cast_nullable_to_non_nullable
as String?,tnType: freezed == tnType ? _self.tnType : tnType // ignore: cast_nullable_to_non_nullable
as String?,tnName: freezed == tnName ? _self.tnName : tnName // ignore: cast_nullable_to_non_nullable
as String?,tnPoints: freezed == tnPoints ? _self.tnPoints : tnPoints // ignore: cast_nullable_to_non_nullable
as String?,tnDate: freezed == tnDate ? _self.tnDate : tnDate // ignore: cast_nullable_to_non_nullable
as String?,tnStatus: freezed == tnStatus ? _self.tnStatus : tnStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
