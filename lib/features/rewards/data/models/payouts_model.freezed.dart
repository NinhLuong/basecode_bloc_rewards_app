// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payouts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayoutsModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'payouts') List<Payout>? get payouts;@JsonKey(name: 'balance') String? get balance;
/// Create a copy of PayoutsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayoutsModelCopyWith<PayoutsModel> get copyWith => _$PayoutsModelCopyWithImpl<PayoutsModel>(this as PayoutsModel, _$identity);

  /// Serializes this PayoutsModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PayoutsModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('payouts', payouts))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayoutsModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.payouts, payouts)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(payouts),balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PayoutsModel(error: $error, errorCode: $errorCode, payouts: $payouts, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $PayoutsModelCopyWith<$Res>  {
  factory $PayoutsModelCopyWith(PayoutsModel value, $Res Function(PayoutsModel) _then) = _$PayoutsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'payouts') List<Payout>? payouts,@JsonKey(name: 'balance') String? balance
});




}
/// @nodoc
class _$PayoutsModelCopyWithImpl<$Res>
    implements $PayoutsModelCopyWith<$Res> {
  _$PayoutsModelCopyWithImpl(this._self, this._then);

  final PayoutsModel _self;
  final $Res Function(PayoutsModel) _then;

/// Create a copy of PayoutsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? payouts = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,payouts: freezed == payouts ? _self.payouts : payouts // ignore: cast_nullable_to_non_nullable
as List<Payout>?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PayoutsModel].
extension PayoutsModelPatterns on PayoutsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayoutsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayoutsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayoutsModel value)  $default,){
final _that = this;
switch (_that) {
case _PayoutsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayoutsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PayoutsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'payouts')  List<Payout>? payouts, @JsonKey(name: 'balance')  String? balance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayoutsModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.payouts,_that.balance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'payouts')  List<Payout>? payouts, @JsonKey(name: 'balance')  String? balance)  $default,) {final _that = this;
switch (_that) {
case _PayoutsModel():
return $default(_that.error,_that.errorCode,_that.payouts,_that.balance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'payouts')  List<Payout>? payouts, @JsonKey(name: 'balance')  String? balance)?  $default,) {final _that = this;
switch (_that) {
case _PayoutsModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.payouts,_that.balance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayoutsModel extends PayoutsModel with DiagnosticableTreeMixin {
  const _PayoutsModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'payouts') final  List<Payout>? payouts, @JsonKey(name: 'balance') this.balance}): _payouts = payouts,super._();
  factory _PayoutsModel.fromJson(Map<String, dynamic> json) => _$PayoutsModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
 final  List<Payout>? _payouts;
@override@JsonKey(name: 'payouts') List<Payout>? get payouts {
  final value = _payouts;
  if (value == null) return null;
  if (_payouts is EqualUnmodifiableListView) return _payouts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'balance') final  String? balance;

/// Create a copy of PayoutsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutsModelCopyWith<_PayoutsModel> get copyWith => __$PayoutsModelCopyWithImpl<_PayoutsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayoutsModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PayoutsModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('payouts', payouts))..add(DiagnosticsProperty('balance', balance));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayoutsModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other._payouts, _payouts)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(_payouts),balance);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PayoutsModel(error: $error, errorCode: $errorCode, payouts: $payouts, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$PayoutsModelCopyWith<$Res> implements $PayoutsModelCopyWith<$Res> {
  factory _$PayoutsModelCopyWith(_PayoutsModel value, $Res Function(_PayoutsModel) _then) = __$PayoutsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'payouts') List<Payout>? payouts,@JsonKey(name: 'balance') String? balance
});




}
/// @nodoc
class __$PayoutsModelCopyWithImpl<$Res>
    implements _$PayoutsModelCopyWith<$Res> {
  __$PayoutsModelCopyWithImpl(this._self, this._then);

  final _PayoutsModel _self;
  final $Res Function(_PayoutsModel) _then;

/// Create a copy of PayoutsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? payouts = freezed,Object? balance = freezed,}) {
  return _then(_PayoutsModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,payouts: freezed == payouts ? _self._payouts : payouts // ignore: cast_nullable_to_non_nullable
as List<Payout>?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Payout implements DiagnosticableTreeMixin {

@JsonKey(name: 'payout_id') String? get payoutId;@JsonKey(name: 'payout_title') String? get payoutTitle;@JsonKey(name: 'payout_subtitle') String? get payoutSubtitle;@JsonKey(name: 'payout_message') String? get payoutMessage;@JsonKey(name: 'payout_amount') String? get payoutAmount;@JsonKey(name: 'payout_pointsRequired') String? get payoutPointsRequired;@JsonKey(name: 'payout_thumbnail') String? get payoutThumbnail;@JsonKey(name: 'payout_status') String? get payoutStatus;
/// Create a copy of Payout
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayoutCopyWith<Payout> get copyWith => _$PayoutCopyWithImpl<Payout>(this as Payout, _$identity);

  /// Serializes this Payout to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payout'))
    ..add(DiagnosticsProperty('payoutId', payoutId))..add(DiagnosticsProperty('payoutTitle', payoutTitle))..add(DiagnosticsProperty('payoutSubtitle', payoutSubtitle))..add(DiagnosticsProperty('payoutMessage', payoutMessage))..add(DiagnosticsProperty('payoutAmount', payoutAmount))..add(DiagnosticsProperty('payoutPointsRequired', payoutPointsRequired))..add(DiagnosticsProperty('payoutThumbnail', payoutThumbnail))..add(DiagnosticsProperty('payoutStatus', payoutStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payout&&(identical(other.payoutId, payoutId) || other.payoutId == payoutId)&&(identical(other.payoutTitle, payoutTitle) || other.payoutTitle == payoutTitle)&&(identical(other.payoutSubtitle, payoutSubtitle) || other.payoutSubtitle == payoutSubtitle)&&(identical(other.payoutMessage, payoutMessage) || other.payoutMessage == payoutMessage)&&(identical(other.payoutAmount, payoutAmount) || other.payoutAmount == payoutAmount)&&(identical(other.payoutPointsRequired, payoutPointsRequired) || other.payoutPointsRequired == payoutPointsRequired)&&(identical(other.payoutThumbnail, payoutThumbnail) || other.payoutThumbnail == payoutThumbnail)&&(identical(other.payoutStatus, payoutStatus) || other.payoutStatus == payoutStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payoutId,payoutTitle,payoutSubtitle,payoutMessage,payoutAmount,payoutPointsRequired,payoutThumbnail,payoutStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payout(payoutId: $payoutId, payoutTitle: $payoutTitle, payoutSubtitle: $payoutSubtitle, payoutMessage: $payoutMessage, payoutAmount: $payoutAmount, payoutPointsRequired: $payoutPointsRequired, payoutThumbnail: $payoutThumbnail, payoutStatus: $payoutStatus)';
}


}

/// @nodoc
abstract mixin class $PayoutCopyWith<$Res>  {
  factory $PayoutCopyWith(Payout value, $Res Function(Payout) _then) = _$PayoutCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'payout_id') String? payoutId,@JsonKey(name: 'payout_title') String? payoutTitle,@JsonKey(name: 'payout_subtitle') String? payoutSubtitle,@JsonKey(name: 'payout_message') String? payoutMessage,@JsonKey(name: 'payout_amount') String? payoutAmount,@JsonKey(name: 'payout_pointsRequired') String? payoutPointsRequired,@JsonKey(name: 'payout_thumbnail') String? payoutThumbnail,@JsonKey(name: 'payout_status') String? payoutStatus
});




}
/// @nodoc
class _$PayoutCopyWithImpl<$Res>
    implements $PayoutCopyWith<$Res> {
  _$PayoutCopyWithImpl(this._self, this._then);

  final Payout _self;
  final $Res Function(Payout) _then;

/// Create a copy of Payout
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payoutId = freezed,Object? payoutTitle = freezed,Object? payoutSubtitle = freezed,Object? payoutMessage = freezed,Object? payoutAmount = freezed,Object? payoutPointsRequired = freezed,Object? payoutThumbnail = freezed,Object? payoutStatus = freezed,}) {
  return _then(_self.copyWith(
payoutId: freezed == payoutId ? _self.payoutId : payoutId // ignore: cast_nullable_to_non_nullable
as String?,payoutTitle: freezed == payoutTitle ? _self.payoutTitle : payoutTitle // ignore: cast_nullable_to_non_nullable
as String?,payoutSubtitle: freezed == payoutSubtitle ? _self.payoutSubtitle : payoutSubtitle // ignore: cast_nullable_to_non_nullable
as String?,payoutMessage: freezed == payoutMessage ? _self.payoutMessage : payoutMessage // ignore: cast_nullable_to_non_nullable
as String?,payoutAmount: freezed == payoutAmount ? _self.payoutAmount : payoutAmount // ignore: cast_nullable_to_non_nullable
as String?,payoutPointsRequired: freezed == payoutPointsRequired ? _self.payoutPointsRequired : payoutPointsRequired // ignore: cast_nullable_to_non_nullable
as String?,payoutThumbnail: freezed == payoutThumbnail ? _self.payoutThumbnail : payoutThumbnail // ignore: cast_nullable_to_non_nullable
as String?,payoutStatus: freezed == payoutStatus ? _self.payoutStatus : payoutStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Payout].
extension PayoutPatterns on Payout {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payout value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payout() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payout value)  $default,){
final _that = this;
switch (_that) {
case _Payout():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payout value)?  $default,){
final _that = this;
switch (_that) {
case _Payout() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'payout_id')  String? payoutId, @JsonKey(name: 'payout_title')  String? payoutTitle, @JsonKey(name: 'payout_subtitle')  String? payoutSubtitle, @JsonKey(name: 'payout_message')  String? payoutMessage, @JsonKey(name: 'payout_amount')  String? payoutAmount, @JsonKey(name: 'payout_pointsRequired')  String? payoutPointsRequired, @JsonKey(name: 'payout_thumbnail')  String? payoutThumbnail, @JsonKey(name: 'payout_status')  String? payoutStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payout() when $default != null:
return $default(_that.payoutId,_that.payoutTitle,_that.payoutSubtitle,_that.payoutMessage,_that.payoutAmount,_that.payoutPointsRequired,_that.payoutThumbnail,_that.payoutStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'payout_id')  String? payoutId, @JsonKey(name: 'payout_title')  String? payoutTitle, @JsonKey(name: 'payout_subtitle')  String? payoutSubtitle, @JsonKey(name: 'payout_message')  String? payoutMessage, @JsonKey(name: 'payout_amount')  String? payoutAmount, @JsonKey(name: 'payout_pointsRequired')  String? payoutPointsRequired, @JsonKey(name: 'payout_thumbnail')  String? payoutThumbnail, @JsonKey(name: 'payout_status')  String? payoutStatus)  $default,) {final _that = this;
switch (_that) {
case _Payout():
return $default(_that.payoutId,_that.payoutTitle,_that.payoutSubtitle,_that.payoutMessage,_that.payoutAmount,_that.payoutPointsRequired,_that.payoutThumbnail,_that.payoutStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'payout_id')  String? payoutId, @JsonKey(name: 'payout_title')  String? payoutTitle, @JsonKey(name: 'payout_subtitle')  String? payoutSubtitle, @JsonKey(name: 'payout_message')  String? payoutMessage, @JsonKey(name: 'payout_amount')  String? payoutAmount, @JsonKey(name: 'payout_pointsRequired')  String? payoutPointsRequired, @JsonKey(name: 'payout_thumbnail')  String? payoutThumbnail, @JsonKey(name: 'payout_status')  String? payoutStatus)?  $default,) {final _that = this;
switch (_that) {
case _Payout() when $default != null:
return $default(_that.payoutId,_that.payoutTitle,_that.payoutSubtitle,_that.payoutMessage,_that.payoutAmount,_that.payoutPointsRequired,_that.payoutThumbnail,_that.payoutStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Payout extends Payout with DiagnosticableTreeMixin {
  const _Payout({@JsonKey(name: 'payout_id') this.payoutId, @JsonKey(name: 'payout_title') this.payoutTitle, @JsonKey(name: 'payout_subtitle') this.payoutSubtitle, @JsonKey(name: 'payout_message') this.payoutMessage, @JsonKey(name: 'payout_amount') this.payoutAmount, @JsonKey(name: 'payout_pointsRequired') this.payoutPointsRequired, @JsonKey(name: 'payout_thumbnail') this.payoutThumbnail, @JsonKey(name: 'payout_status') this.payoutStatus}): super._();
  factory _Payout.fromJson(Map<String, dynamic> json) => _$PayoutFromJson(json);

@override@JsonKey(name: 'payout_id') final  String? payoutId;
@override@JsonKey(name: 'payout_title') final  String? payoutTitle;
@override@JsonKey(name: 'payout_subtitle') final  String? payoutSubtitle;
@override@JsonKey(name: 'payout_message') final  String? payoutMessage;
@override@JsonKey(name: 'payout_amount') final  String? payoutAmount;
@override@JsonKey(name: 'payout_pointsRequired') final  String? payoutPointsRequired;
@override@JsonKey(name: 'payout_thumbnail') final  String? payoutThumbnail;
@override@JsonKey(name: 'payout_status') final  String? payoutStatus;

/// Create a copy of Payout
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayoutCopyWith<_Payout> get copyWith => __$PayoutCopyWithImpl<_Payout>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayoutToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payout'))
    ..add(DiagnosticsProperty('payoutId', payoutId))..add(DiagnosticsProperty('payoutTitle', payoutTitle))..add(DiagnosticsProperty('payoutSubtitle', payoutSubtitle))..add(DiagnosticsProperty('payoutMessage', payoutMessage))..add(DiagnosticsProperty('payoutAmount', payoutAmount))..add(DiagnosticsProperty('payoutPointsRequired', payoutPointsRequired))..add(DiagnosticsProperty('payoutThumbnail', payoutThumbnail))..add(DiagnosticsProperty('payoutStatus', payoutStatus));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payout&&(identical(other.payoutId, payoutId) || other.payoutId == payoutId)&&(identical(other.payoutTitle, payoutTitle) || other.payoutTitle == payoutTitle)&&(identical(other.payoutSubtitle, payoutSubtitle) || other.payoutSubtitle == payoutSubtitle)&&(identical(other.payoutMessage, payoutMessage) || other.payoutMessage == payoutMessage)&&(identical(other.payoutAmount, payoutAmount) || other.payoutAmount == payoutAmount)&&(identical(other.payoutPointsRequired, payoutPointsRequired) || other.payoutPointsRequired == payoutPointsRequired)&&(identical(other.payoutThumbnail, payoutThumbnail) || other.payoutThumbnail == payoutThumbnail)&&(identical(other.payoutStatus, payoutStatus) || other.payoutStatus == payoutStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payoutId,payoutTitle,payoutSubtitle,payoutMessage,payoutAmount,payoutPointsRequired,payoutThumbnail,payoutStatus);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payout(payoutId: $payoutId, payoutTitle: $payoutTitle, payoutSubtitle: $payoutSubtitle, payoutMessage: $payoutMessage, payoutAmount: $payoutAmount, payoutPointsRequired: $payoutPointsRequired, payoutThumbnail: $payoutThumbnail, payoutStatus: $payoutStatus)';
}


}

/// @nodoc
abstract mixin class _$PayoutCopyWith<$Res> implements $PayoutCopyWith<$Res> {
  factory _$PayoutCopyWith(_Payout value, $Res Function(_Payout) _then) = __$PayoutCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'payout_id') String? payoutId,@JsonKey(name: 'payout_title') String? payoutTitle,@JsonKey(name: 'payout_subtitle') String? payoutSubtitle,@JsonKey(name: 'payout_message') String? payoutMessage,@JsonKey(name: 'payout_amount') String? payoutAmount,@JsonKey(name: 'payout_pointsRequired') String? payoutPointsRequired,@JsonKey(name: 'payout_thumbnail') String? payoutThumbnail,@JsonKey(name: 'payout_status') String? payoutStatus
});




}
/// @nodoc
class __$PayoutCopyWithImpl<$Res>
    implements _$PayoutCopyWith<$Res> {
  __$PayoutCopyWithImpl(this._self, this._then);

  final _Payout _self;
  final $Res Function(_Payout) _then;

/// Create a copy of Payout
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payoutId = freezed,Object? payoutTitle = freezed,Object? payoutSubtitle = freezed,Object? payoutMessage = freezed,Object? payoutAmount = freezed,Object? payoutPointsRequired = freezed,Object? payoutThumbnail = freezed,Object? payoutStatus = freezed,}) {
  return _then(_Payout(
payoutId: freezed == payoutId ? _self.payoutId : payoutId // ignore: cast_nullable_to_non_nullable
as String?,payoutTitle: freezed == payoutTitle ? _self.payoutTitle : payoutTitle // ignore: cast_nullable_to_non_nullable
as String?,payoutSubtitle: freezed == payoutSubtitle ? _self.payoutSubtitle : payoutSubtitle // ignore: cast_nullable_to_non_nullable
as String?,payoutMessage: freezed == payoutMessage ? _self.payoutMessage : payoutMessage // ignore: cast_nullable_to_non_nullable
as String?,payoutAmount: freezed == payoutAmount ? _self.payoutAmount : payoutAmount // ignore: cast_nullable_to_non_nullable
as String?,payoutPointsRequired: freezed == payoutPointsRequired ? _self.payoutPointsRequired : payoutPointsRequired // ignore: cast_nullable_to_non_nullable
as String?,payoutThumbnail: freezed == payoutThumbnail ? _self.payoutThumbnail : payoutThumbnail // ignore: cast_nullable_to_non_nullable
as String?,payoutStatus: freezed == payoutStatus ? _self.payoutStatus : payoutStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
