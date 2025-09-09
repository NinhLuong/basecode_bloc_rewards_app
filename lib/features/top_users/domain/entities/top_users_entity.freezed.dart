// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_users_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopUsersEntity {

 List<UserRankEntity> get topThree; List<UserRankEntity> get rest; UserRankEntity? get myRank; double get maxPoints;
/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopUsersEntityCopyWith<TopUsersEntity> get copyWith => _$TopUsersEntityCopyWithImpl<TopUsersEntity>(this as TopUsersEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopUsersEntity&&const DeepCollectionEquality().equals(other.topThree, topThree)&&const DeepCollectionEquality().equals(other.rest, rest)&&(identical(other.myRank, myRank) || other.myRank == myRank)&&(identical(other.maxPoints, maxPoints) || other.maxPoints == maxPoints));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(topThree),const DeepCollectionEquality().hash(rest),myRank,maxPoints);

@override
String toString() {
  return 'TopUsersEntity(topThree: $topThree, rest: $rest, myRank: $myRank, maxPoints: $maxPoints)';
}


}

/// @nodoc
abstract mixin class $TopUsersEntityCopyWith<$Res>  {
  factory $TopUsersEntityCopyWith(TopUsersEntity value, $Res Function(TopUsersEntity) _then) = _$TopUsersEntityCopyWithImpl;
@useResult
$Res call({
 List<UserRankEntity> topThree, List<UserRankEntity> rest, UserRankEntity? myRank, double maxPoints
});


$UserRankEntityCopyWith<$Res>? get myRank;

}
/// @nodoc
class _$TopUsersEntityCopyWithImpl<$Res>
    implements $TopUsersEntityCopyWith<$Res> {
  _$TopUsersEntityCopyWithImpl(this._self, this._then);

  final TopUsersEntity _self;
  final $Res Function(TopUsersEntity) _then;

/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topThree = null,Object? rest = null,Object? myRank = freezed,Object? maxPoints = null,}) {
  return _then(_self.copyWith(
topThree: null == topThree ? _self.topThree : topThree // ignore: cast_nullable_to_non_nullable
as List<UserRankEntity>,rest: null == rest ? _self.rest : rest // ignore: cast_nullable_to_non_nullable
as List<UserRankEntity>,myRank: freezed == myRank ? _self.myRank : myRank // ignore: cast_nullable_to_non_nullable
as UserRankEntity?,maxPoints: null == maxPoints ? _self.maxPoints : maxPoints // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRankEntityCopyWith<$Res>? get myRank {
    if (_self.myRank == null) {
    return null;
  }

  return $UserRankEntityCopyWith<$Res>(_self.myRank!, (value) {
    return _then(_self.copyWith(myRank: value));
  });
}
}


/// Adds pattern-matching-related methods to [TopUsersEntity].
extension TopUsersEntityPatterns on TopUsersEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopUsersEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopUsersEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopUsersEntity value)  $default,){
final _that = this;
switch (_that) {
case _TopUsersEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopUsersEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TopUsersEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserRankEntity> topThree,  List<UserRankEntity> rest,  UserRankEntity? myRank,  double maxPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopUsersEntity() when $default != null:
return $default(_that.topThree,_that.rest,_that.myRank,_that.maxPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserRankEntity> topThree,  List<UserRankEntity> rest,  UserRankEntity? myRank,  double maxPoints)  $default,) {final _that = this;
switch (_that) {
case _TopUsersEntity():
return $default(_that.topThree,_that.rest,_that.myRank,_that.maxPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserRankEntity> topThree,  List<UserRankEntity> rest,  UserRankEntity? myRank,  double maxPoints)?  $default,) {final _that = this;
switch (_that) {
case _TopUsersEntity() when $default != null:
return $default(_that.topThree,_that.rest,_that.myRank,_that.maxPoints);case _:
  return null;

}
}

}

/// @nodoc


class _TopUsersEntity extends TopUsersEntity {
  const _TopUsersEntity({required final  List<UserRankEntity> topThree, required final  List<UserRankEntity> rest, this.myRank, required this.maxPoints}): _topThree = topThree,_rest = rest,super._();
  

 final  List<UserRankEntity> _topThree;
@override List<UserRankEntity> get topThree {
  if (_topThree is EqualUnmodifiableListView) return _topThree;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topThree);
}

 final  List<UserRankEntity> _rest;
@override List<UserRankEntity> get rest {
  if (_rest is EqualUnmodifiableListView) return _rest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rest);
}

@override final  UserRankEntity? myRank;
@override final  double maxPoints;

/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopUsersEntityCopyWith<_TopUsersEntity> get copyWith => __$TopUsersEntityCopyWithImpl<_TopUsersEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopUsersEntity&&const DeepCollectionEquality().equals(other._topThree, _topThree)&&const DeepCollectionEquality().equals(other._rest, _rest)&&(identical(other.myRank, myRank) || other.myRank == myRank)&&(identical(other.maxPoints, maxPoints) || other.maxPoints == maxPoints));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topThree),const DeepCollectionEquality().hash(_rest),myRank,maxPoints);

@override
String toString() {
  return 'TopUsersEntity(topThree: $topThree, rest: $rest, myRank: $myRank, maxPoints: $maxPoints)';
}


}

/// @nodoc
abstract mixin class _$TopUsersEntityCopyWith<$Res> implements $TopUsersEntityCopyWith<$Res> {
  factory _$TopUsersEntityCopyWith(_TopUsersEntity value, $Res Function(_TopUsersEntity) _then) = __$TopUsersEntityCopyWithImpl;
@override @useResult
$Res call({
 List<UserRankEntity> topThree, List<UserRankEntity> rest, UserRankEntity? myRank, double maxPoints
});


@override $UserRankEntityCopyWith<$Res>? get myRank;

}
/// @nodoc
class __$TopUsersEntityCopyWithImpl<$Res>
    implements _$TopUsersEntityCopyWith<$Res> {
  __$TopUsersEntityCopyWithImpl(this._self, this._then);

  final _TopUsersEntity _self;
  final $Res Function(_TopUsersEntity) _then;

/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topThree = null,Object? rest = null,Object? myRank = freezed,Object? maxPoints = null,}) {
  return _then(_TopUsersEntity(
topThree: null == topThree ? _self._topThree : topThree // ignore: cast_nullable_to_non_nullable
as List<UserRankEntity>,rest: null == rest ? _self._rest : rest // ignore: cast_nullable_to_non_nullable
as List<UserRankEntity>,myRank: freezed == myRank ? _self.myRank : myRank // ignore: cast_nullable_to_non_nullable
as UserRankEntity?,maxPoints: null == maxPoints ? _self.maxPoints : maxPoints // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of TopUsersEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserRankEntityCopyWith<$Res>? get myRank {
    if (_self.myRank == null) {
    return null;
  }

  return $UserRankEntityCopyWith<$Res>(_self.myRank!, (value) {
    return _then(_self.copyWith(myRank: value));
  });
}
}

/// @nodoc
mixin _$UserRankEntity {

 String get wallet; double get points; String get amount; int get rank;
/// Create a copy of UserRankEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRankEntityCopyWith<UserRankEntity> get copyWith => _$UserRankEntityCopyWithImpl<UserRankEntity>(this as UserRankEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRankEntity&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.points, points) || other.points == points)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rank, rank) || other.rank == rank));
}


@override
int get hashCode => Object.hash(runtimeType,wallet,points,amount,rank);

@override
String toString() {
  return 'UserRankEntity(wallet: $wallet, points: $points, amount: $amount, rank: $rank)';
}


}

/// @nodoc
abstract mixin class $UserRankEntityCopyWith<$Res>  {
  factory $UserRankEntityCopyWith(UserRankEntity value, $Res Function(UserRankEntity) _then) = _$UserRankEntityCopyWithImpl;
@useResult
$Res call({
 String wallet, double points, String amount, int rank
});




}
/// @nodoc
class _$UserRankEntityCopyWithImpl<$Res>
    implements $UserRankEntityCopyWith<$Res> {
  _$UserRankEntityCopyWithImpl(this._self, this._then);

  final UserRankEntity _self;
  final $Res Function(UserRankEntity) _then;

/// Create a copy of UserRankEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallet = null,Object? points = null,Object? amount = null,Object? rank = null,}) {
  return _then(_self.copyWith(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRankEntity].
extension UserRankEntityPatterns on UserRankEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRankEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRankEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRankEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserRankEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRankEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserRankEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String wallet,  double points,  String amount,  int rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRankEntity() when $default != null:
return $default(_that.wallet,_that.points,_that.amount,_that.rank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String wallet,  double points,  String amount,  int rank)  $default,) {final _that = this;
switch (_that) {
case _UserRankEntity():
return $default(_that.wallet,_that.points,_that.amount,_that.rank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String wallet,  double points,  String amount,  int rank)?  $default,) {final _that = this;
switch (_that) {
case _UserRankEntity() when $default != null:
return $default(_that.wallet,_that.points,_that.amount,_that.rank);case _:
  return null;

}
}

}

/// @nodoc


class _UserRankEntity extends UserRankEntity {
  const _UserRankEntity({required this.wallet, required this.points, required this.amount, required this.rank}): super._();
  

@override final  String wallet;
@override final  double points;
@override final  String amount;
@override final  int rank;

/// Create a copy of UserRankEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRankEntityCopyWith<_UserRankEntity> get copyWith => __$UserRankEntityCopyWithImpl<_UserRankEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRankEntity&&(identical(other.wallet, wallet) || other.wallet == wallet)&&(identical(other.points, points) || other.points == points)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.rank, rank) || other.rank == rank));
}


@override
int get hashCode => Object.hash(runtimeType,wallet,points,amount,rank);

@override
String toString() {
  return 'UserRankEntity(wallet: $wallet, points: $points, amount: $amount, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$UserRankEntityCopyWith<$Res> implements $UserRankEntityCopyWith<$Res> {
  factory _$UserRankEntityCopyWith(_UserRankEntity value, $Res Function(_UserRankEntity) _then) = __$UserRankEntityCopyWithImpl;
@override @useResult
$Res call({
 String wallet, double points, String amount, int rank
});




}
/// @nodoc
class __$UserRankEntityCopyWithImpl<$Res>
    implements _$UserRankEntityCopyWith<$Res> {
  __$UserRankEntityCopyWithImpl(this._self, this._then);

  final _UserRankEntity _self;
  final $Res Function(_UserRankEntity) _then;

/// Create a copy of UserRankEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallet = null,Object? points = null,Object? amount = null,Object? rank = null,}) {
  return _then(_UserRankEntity(
wallet: null == wallet ? _self.wallet : wallet // ignore: cast_nullable_to_non_nullable
as String,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as double,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
