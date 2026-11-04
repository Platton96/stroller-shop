// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogVM {

 String get city; StrollerSort get sort; List<TypeChipVM> get typeChips; List<StrollerCardVM> get cards; int get totalCount; bool get hasMore; int get cartCount;
/// Create a copy of CatalogVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<CatalogVM> get copyWith => _$CatalogVMCopyWithImpl<CatalogVM>(this as CatalogVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CatalogVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogVM&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.sort, _this.sort) || other.sort == _this.sort)&&const DeepCollectionEquality().equals(other.typeChips, _this.typeChips)&&const DeepCollectionEquality().equals(other.cards, _this.cards)&&(identical(other.totalCount, _this.totalCount) || other.totalCount == _this.totalCount)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount));
}


@override
int get hashCode {
  final _this = this as CatalogVM;
  return Object.hash(runtimeType,_this.city,_this.sort,const DeepCollectionEquality().hash(_this.typeChips),const DeepCollectionEquality().hash(_this.cards),_this.totalCount,_this.hasMore,_this.cartCount);
}

@override
String toString() {
  final _this = this as CatalogVM;
  return 'CatalogVM(city: ${_this.city}, sort: ${_this.sort}, typeChips: ${_this.typeChips}, cards: ${_this.cards}, totalCount: ${_this.totalCount}, hasMore: ${_this.hasMore}, cartCount: ${_this.cartCount})';
}


}

/// @nodoc
abstract mixin class $CatalogVMCopyWith<$Res>  {
  factory $CatalogVMCopyWith(CatalogVM value, $Res Function(CatalogVM) _then) = _$CatalogVMCopyWithImpl;
@useResult
$Res call({
 String city, StrollerSort sort, List<TypeChipVM> typeChips, List<StrollerCardVM> cards, int totalCount, bool hasMore, int cartCount
});




}
/// @nodoc
class _$CatalogVMCopyWithImpl<$Res>
    implements $CatalogVMCopyWith<$Res> {
  _$CatalogVMCopyWithImpl(this._self, this._then);

  final CatalogVM _self;
  final $Res Function(CatalogVM) _then;

/// Create a copy of CatalogVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? sort = null,Object? typeChips = null,Object? cards = null,Object? totalCount = null,Object? hasMore = null,Object? cartCount = null,}) {
  return _then(CatalogVM(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,typeChips: null == typeChips ? _self.typeChips : typeChips // ignore: cast_nullable_to_non_nullable
as List<TypeChipVM>,cards: null == cards ? _self.cards : cards // ignore: cast_nullable_to_non_nullable
as List<StrollerCardVM>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogVM].
extension CatalogVMPatterns on CatalogVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogVM value)  $default,){
final _that = this;
switch (_that) {
case _CatalogVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogVM value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String city,  StrollerSort sort,  List<TypeChipVM> typeChips,  List<StrollerCardVM> cards,  int totalCount,  bool hasMore,  int cartCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogVM() when $default != null:
return $default(_that.city,_that.sort,_that.typeChips,_that.cards,_that.totalCount,_that.hasMore,_that.cartCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String city,  StrollerSort sort,  List<TypeChipVM> typeChips,  List<StrollerCardVM> cards,  int totalCount,  bool hasMore,  int cartCount)  $default,) {final _that = this;
switch (_that) {
case _CatalogVM():
return $default(_that.city,_that.sort,_that.typeChips,_that.cards,_that.totalCount,_that.hasMore,_that.cartCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String city,  StrollerSort sort,  List<TypeChipVM> typeChips,  List<StrollerCardVM> cards,  int totalCount,  bool hasMore,  int cartCount)?  $default,) {final _that = this;
switch (_that) {
case _CatalogVM() when $default != null:
return $default(_that.city,_that.sort,_that.typeChips,_that.cards,_that.totalCount,_that.hasMore,_that.cartCount);case _:
  return null;

}
}

}

/// @nodoc


class _CatalogVM implements CatalogVM {
  const _CatalogVM({required this.city, required this.sort, required  List<TypeChipVM> typeChips, required  List<StrollerCardVM> cards, required this.totalCount, required this.hasMore, required this.cartCount}): _typeChips = typeChips,_cards = cards;
  

@override final  String city;
@override final  StrollerSort sort;
 final  List<TypeChipVM> _typeChips;
@override List<TypeChipVM> get typeChips {
  if (_typeChips is EqualUnmodifiableListView) return _typeChips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_typeChips);
}

 final  List<StrollerCardVM> _cards;
@override List<StrollerCardVM> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}

@override final  int totalCount;
@override final  bool hasMore;
@override final  int cartCount;

/// Create a copy of CatalogVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogVMCopyWith<_CatalogVM> get copyWith => __$CatalogVMCopyWithImpl<_CatalogVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogVM&&(identical(other.city, city) || other.city == city)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.typeChips, _typeChips)&&const DeepCollectionEquality().equals(other.cards, _cards)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,city,sort,const DeepCollectionEquality().hash(_typeChips),const DeepCollectionEquality().hash(_cards),totalCount,hasMore,cartCount);
}

@override
String toString() {
    return 'CatalogVM(city: $city, sort: $sort, typeChips: $typeChips, cards: $cards, totalCount: $totalCount, hasMore: $hasMore, cartCount: $cartCount)';
}


}

/// @nodoc
abstract mixin class _$CatalogVMCopyWith<$Res> implements $CatalogVMCopyWith<$Res> {
  factory _$CatalogVMCopyWith(_CatalogVM value, $Res Function(_CatalogVM) _then) = __$CatalogVMCopyWithImpl;
@override @useResult
$Res call({
 String city, StrollerSort sort, List<TypeChipVM> typeChips, List<StrollerCardVM> cards, int totalCount, bool hasMore, int cartCount
});




}
/// @nodoc
class __$CatalogVMCopyWithImpl<$Res>
    implements _$CatalogVMCopyWith<$Res> {
  __$CatalogVMCopyWithImpl(this._self, this._then);

  final _CatalogVM _self;
  final $Res Function(_CatalogVM) _then;

/// Create a copy of CatalogVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? sort = null,Object? typeChips = null,Object? cards = null,Object? totalCount = null,Object? hasMore = null,Object? cartCount = null,}) {
  return _then(_CatalogVM(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,typeChips: null == typeChips ? _self._typeChips : typeChips // ignore: cast_nullable_to_non_nullable
as List<TypeChipVM>,cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<StrollerCardVM>,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
