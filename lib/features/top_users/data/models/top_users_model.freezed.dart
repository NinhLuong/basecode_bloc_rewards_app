// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopUsersModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'error_code') int? get errorCode;@JsonKey(name: 'requests') List<UserRankModel>? get requests;@JsonKey(name: 'my_rank') UserRankModel? get myRank;
/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopUsersModelCopyWith<TopUsersModel> get copyWith => _$TopUsersModelCopyWithImpl<TopUsersModel>(this as TopUsersModel, _$identity);

  /// Serializes this TopUsersModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopUsersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('requests', requests))..add(DiagnosticsProperty('myRank', myRank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopUsersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.requests, requests)&&(identical(other.myRank, myRank) || other.myRank == myRank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(requests),myRank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopUsersModel(error: $error, errorCode: $errorCode, requests: $requests, myRank: $myRank)';
}


}

/// @nodoc
abstract mixin class $TopUsersModelCopyWith<$Res>  {
  factory $TopUsersModelCopyWith(TopUsersModel value, $Res Function(TopUsersModel) _then) = _$TopUsersModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'requests') List<UserRankModel>? requests,@JsonKey(name: 'my_rank') UserRankModel? myRank
});


$UserRankModelCopyWith<$Res>? get myRank;

}
/// @nodoc
class _$TopUsersModelCopyWithImpl<$Res>
    implements $TopUsersModelCopyWith<$Res> {
  _$TopUsersModelCopyWithImpl(this._self, this._then);

  final TopUsersModel _self;
  final $Res Function(TopUsersModel) _then;

/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,Object? errorCode = freezed,Object? requests = freezed,Object? myRank = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,requests: freezed == requests ? _self.requests : requests // ignore: cast_nullable_to_non_nullable
as List<UserRankModel>?,myRank: freezed == myRank ? _self.myRank : myRank // ignore: cast_nullable_to_non_nullable
as UserRankModel?,
  ));
}
/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRankModelCopyWith<$Res>? get myRank {
    if (_self.myRank == null) {
    return null;
  }

  return $UserRankModelCopyWith<$Res>(_self.myRank!, (value) {
    return _then(_self.copyWith(myRank: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopUsersModel].
extension TopUsersModelPatterns on TopUsersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopUsersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopUsersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopUsersModel value)  $default,){
final _that = this;
switch (_that) {
case _TopUsersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopUsersModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopUsersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<UserRankModel>? requests, @JsonKey(name: 'my_rank')  UserRankModel? myRank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopUsersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.requests,_that.myRank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<UserRankModel>? requests, @JsonKey(name: 'my_rank')  UserRankModel? myRank)  $default,) {final _that = this;
switch (_that) {
case _TopUsersModel():
return $default(_that.error,_that.errorCode,_that.requests,_that.myRank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'error')  bool? error, @JsonKey(name: 'error_code')  int? errorCode, @JsonKey(name: 'requests')  List<UserRankModel>? requests, @JsonKey(name: 'my_rank')  UserRankModel? myRank)?  $default,) {final _that = this;
switch (_that) {
case _TopUsersModel() when $default != null:
return $default(_that.error,_that.errorCode,_that.requests,_that.myRank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopUsersModel extends TopUsersModel with DiagnosticableTreeMixin {
  const _TopUsersModel({@JsonKey(name: 'error') this.error, @JsonKey(name: 'error_code') this.errorCode, @JsonKey(name: 'requests') final  List<UserRankModel>? requests, @JsonKey(name: 'my_rank') this.myRank}): _requests = requests,super._();
  factory _TopUsersModel.fromJson(Map<String, dynamic> json) => _$TopUsersModelFromJson(json);

@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'error_code') final  int? errorCode;
 final  List<UserRankModel>? _requests;
@override@JsonKey(name: 'requests') List<UserRankModel>? get requests {
  final value = _requests;
  if (value == null) return null;
  if (_requests is EqualUnmodifiableListView) return _requests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'my_rank') final  UserRankModel? myRank;

/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersModelCopyWith<_TopUsersModel> get copyWith => __$TopUsersModelCopyWithImpl<_TopUsersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopUsersModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TopUsersModel'))
    ..add(DiagnosticsProperty('error', error))..add(DiagnosticsProperty('errorCode', errorCode))..add(DiagnosticsProperty('requests', requests))..add(DiagnosticsProperty('myRank', myRank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersModel&&(identical(other.error, error) || other.error == error)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other._requests, _requests)&&(identical(other.myRank, myRank) || other.myRank == myRank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,error,errorCode,const DeepCollectionEquality().hash(_requests),myRank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TopUsersModel(error: $error, errorCode: $errorCode, requests: $requests, myRank: $myRank)';
}


}

/// @nodoc
abstract mixin class _$TopUsersModelCopyWith<$Res> implements $TopUsersModelCopyWith<$Res> {
  factory _$TopUsersModelCopyWith(_TopUsersModel value, $Res Function(_TopUsersModel) _then) = __$TopUsersModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'error') bool? error,@JsonKey(name: 'error_code') int? errorCode,@JsonKey(name: 'requests') List<UserRankModel>? requests,@JsonKey(name: 'my_rank') UserRankModel? myRank
});


@override $UserRankModelCopyWith<$Res>? get myRank;

}
/// @nodoc
class __$TopUsersModelCopyWithImpl<$Res>
    implements _$TopUsersModelCopyWith<$Res> {
  __$TopUsersModelCopyWithImpl(this._self, this._then);

  final _TopUsersModel _self;
  final $Res Function(_TopUsersModel) _then;

/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,Object? errorCode = freezed,Object? requests = freezed,Object? myRank = freezed,}) {
  return _then(_TopUsersModel(
error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int?,requests: freezed == requests ? _self._requests : requests // ignore: cast_nullable_to_non_nullable
as List<UserRankModel>?,myRank: freezed == myRank ? _self.myRank : myRank // ignore: cast_nullable_to_non_nullable
as UserRankModel?,
  ));
}

/// Create a copy of TopUsersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRankModelCopyWith<$Res>? get myRank {
    if (_self.myRank == null) {
    return null;
  }

  return $UserRankModelCopyWith<$Res>(_self.myRank!, (value) {
    return _then(_self.copyWith(myRank: value));
  });
}
}


/// @nodoc
mixin _$UserRankModel implements DiagnosticableTreeMixin {

@JsonKey(name: 'request_from') String? get requestFrom;@JsonKey(name: 'points') String? get points;@JsonKey(name: 'amount') String? get amount;@JsonKey(name: 'rank') int? get rank;
/// Create a copy of UserRankModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRankModelCopyWith<UserRankModel> get copyWith => _$UserRankModelCopyWithImpl<UserRankModel>(this as UserRankModel, _$identity);

  /// Serializes this UserRankModel to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserRankModel'))
    ..add(DiagnosticsProperty('requestFrom', requestFrom))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('rank', rank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRankModel&&(identical(other.requestFrom, requestFrom) || other.requestFrom == requestFrom)&&(identical(other.points, points) || other.points == points)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestFrom,points,amount,rank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserRankModel(requestFrom: $requestFrom, points: $points, amount: $amount, rank: $rank)';
}


}

/// @nodoc
abstract mixin class $UserRankModelCopyWith<$Res>  {
  factory $UserRankModelCopyWith(UserRankModel value, $Res Function(UserRankModel) _then) = _$UserRankModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'request_from') String? requestFrom,@JsonKey(name: 'points') String? points,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class _$UserRankModelCopyWithImpl<$Res>
    implements $UserRankModelCopyWith<$Res> {
  _$UserRankModelCopyWithImpl(this._self, this._then);

  final UserRankModel _self;
  final $Res Function(UserRankModel) _then;

/// Create a copy of UserRankModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requestFrom = freezed,Object? points = freezed,Object? amount = freezed,Object? rank = freezed,}) {
  return _then(_self.copyWith(
requestFrom: freezed == requestFrom ? _self.requestFrom : requestFrom // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRankModel].
extension UserRankModelPatterns on UserRankModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRankModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRankModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRankModel value)  $default,){
final _that = this;
switch (_that) {
case _UserRankModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRankModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserRankModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'request_from')  String? requestFrom, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'rank')  int? rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRankModel() when $default != null:
return $default(_that.requestFrom,_that.points,_that.amount,_that.rank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'request_from')  String? requestFrom, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'rank')  int? rank)  $default,) {final _that = this;
switch (_that) {
case _UserRankModel():
return $default(_that.requestFrom,_that.points,_that.amount,_that.rank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'request_from')  String? requestFrom, @JsonKey(name: 'points')  String? points, @JsonKey(name: 'amount')  String? amount, @JsonKey(name: 'rank')  int? rank)?  $default,) {final _that = this;
switch (_that) {
case _UserRankModel() when $default != null:
return $default(_that.requestFrom,_that.points,_that.amount,_that.rank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRankModel extends UserRankModel with DiagnosticableTreeMixin {
  const _UserRankModel({@JsonKey(name: 'request_from') this.requestFrom, @JsonKey(name: 'points') this.points, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'rank') this.rank}): super._();
  factory _UserRankModel.fromJson(Map<String, dynamic> json) => _$UserRankModelFromJson(json);

@override@JsonKey(name: 'request_from') final  String? requestFrom;
@override@JsonKey(name: 'points') final  String? points;
@override@JsonKey(name: 'amount') final  String? amount;
@override@JsonKey(name: 'rank') final  int? rank;

/// Create a copy of UserRankModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRankModelCopyWith<_UserRankModel> get copyWith => __$UserRankModelCopyWithImpl<_UserRankModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRankModelToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserRankModel'))
    ..add(DiagnosticsProperty('requestFrom', requestFrom))..add(DiagnosticsProperty('points', points))..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('rank', rank));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRankModel&&(identical(other.requestFrom, requestFrom) || other.requestFrom == requestFrom)&&(identical(other.points, points) || other.points == points)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requestFrom,points,amount,rank);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserRankModel(requestFrom: $requestFrom, points: $points, amount: $amount, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$UserRankModelCopyWith<$Res> implements $UserRankModelCopyWith<$Res> {
  factory _$UserRankModelCopyWith(_UserRankModel value, $Res Function(_UserRankModel) _then) = __$UserRankModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'request_from') String? requestFrom,@JsonKey(name: 'points') String? points,@JsonKey(name: 'amount') String? amount,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class __$UserRankModelCopyWithImpl<$Res>
    implements _$UserRankModelCopyWith<$Res> {
  __$UserRankModelCopyWithImpl(this._self, this._then);

  final _UserRankModel _self;
  final $Res Function(_UserRankModel) _then;

/// Create a copy of UserRankModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requestFrom = freezed,Object? points = freezed,Object? amount = freezed,Object? rank = freezed,}) {
  return _then(_UserRankModel(
requestFrom: freezed == requestFrom ? _self.requestFrom : requestFrom // ignore: cast_nullable_to_non_nullable
as String?,points: freezed == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
