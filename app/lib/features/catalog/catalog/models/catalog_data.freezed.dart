// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogData {

 StrollerFilter get filter; List<StrollerTypeInfo> get types; List<Stroller> get strollers; int get total; String get city; int get cartCount;
/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogDataCopyWith<CatalogData> get copyWith => _$CatalogDataCopyWithImpl<CatalogData>(this as CatalogData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CatalogData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogData&&(identical(other.filter, _this.filter) || other.filter == _this.filter)&&const DeepCollectionEquality().equals(other.types, _this.types)&&const DeepCollectionEquality().equals(other.strollers, _this.strollers)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount));
}


@override
int get hashCode {
  final _this = this as CatalogData;
  return Object.hash(runtimeType,_this.filter,const DeepCollectionEquality().hash(_this.types),const DeepCollectionEquality().hash(_this.strollers),_this.total,_this.city,_this.cartCount);
}

@override
String toString() {
  final _this = this as CatalogData;
  return 'CatalogData(filter: ${_this.filter}, types: ${_this.types}, strollers: ${_this.strollers}, total: ${_this.total}, city: ${_this.city}, cartCount: ${_this.cartCount})';
}


}

/// @nodoc
abstract mixin class $CatalogDataCopyWith<$Res>  {
  factory $CatalogDataCopyWith(CatalogData value, $Res Function(CatalogData) _then) = _$CatalogDataCopyWithImpl;
@useResult
$Res call({
 StrollerFilter filter, List<StrollerTypeInfo> types, List<Stroller> strollers, int total, String city, int cartCount
});


$StrollerFilterCopyWith<$Res> get filter;

}
/// @nodoc
class _$CatalogDataCopyWithImpl<$Res>
    implements $CatalogDataCopyWith<$Res> {
  _$CatalogDataCopyWithImpl(this._self, this._then);

  final CatalogData _self;
  final $Res Function(CatalogData) _then;

/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,Object? types = null,Object? strollers = null,Object? total = null,Object? city = null,Object? cartCount = null,}) {
  return _then(CatalogData(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as StrollerFilter,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<StrollerTypeInfo>,strollers: null == strollers ? _self.strollers : strollers // ignore: cast_nullable_to_non_nullable
as List<Stroller>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerFilterCopyWith<$Res> get filter {
  
  return $StrollerFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogData].
extension CatalogDataPatterns on CatalogData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogData value)  $default,){
final _that = this;
switch (_that) {
case _CatalogData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogData value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StrollerFilter filter,  List<StrollerTypeInfo> types,  List<Stroller> strollers,  int total,  String city,  int cartCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogData() when $default != null:
return $default(_that.filter,_that.types,_that.strollers,_that.total,_that.city,_that.cartCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StrollerFilter filter,  List<StrollerTypeInfo> types,  List<Stroller> strollers,  int total,  String city,  int cartCount)  $default,) {final _that = this;
switch (_that) {
case _CatalogData():
return $default(_that.filter,_that.types,_that.strollers,_that.total,_that.city,_that.cartCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StrollerFilter filter,  List<StrollerTypeInfo> types,  List<Stroller> strollers,  int total,  String city,  int cartCount)?  $default,) {final _that = this;
switch (_that) {
case _CatalogData() when $default != null:
return $default(_that.filter,_that.types,_that.strollers,_that.total,_that.city,_that.cartCount);case _:
  return null;

}
}

}

/// @nodoc


class _CatalogData implements CatalogData {
  const _CatalogData({required this.filter, required  List<StrollerTypeInfo> types, required  List<Stroller> strollers, required this.total, required this.city, required this.cartCount}): _types = types,_strollers = strollers;
  

@override final  StrollerFilter filter;
 final  List<StrollerTypeInfo> _types;
@override List<StrollerTypeInfo> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<Stroller> _strollers;
@override List<Stroller> get strollers {
  if (_strollers is EqualUnmodifiableListView) return _strollers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strollers);
}

@override final  int total;
@override final  String city;
@override final  int cartCount;

/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogDataCopyWith<_CatalogData> get copyWith => __$CatalogDataCopyWithImpl<_CatalogData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogData&&(identical(other.filter, filter) || other.filter == filter)&&const DeepCollectionEquality().equals(other.types, _types)&&const DeepCollectionEquality().equals(other.strollers, _strollers)&&(identical(other.total, total) || other.total == total)&&(identical(other.city, city) || other.city == city)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,filter,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_strollers),total,city,cartCount);
}

@override
String toString() {
    return 'CatalogData(filter: $filter, types: $types, strollers: $strollers, total: $total, city: $city, cartCount: $cartCount)';
}


}

/// @nodoc
abstract mixin class _$CatalogDataCopyWith<$Res> implements $CatalogDataCopyWith<$Res> {
  factory _$CatalogDataCopyWith(_CatalogData value, $Res Function(_CatalogData) _then) = __$CatalogDataCopyWithImpl;
@override @useResult
$Res call({
 StrollerFilter filter, List<StrollerTypeInfo> types, List<Stroller> strollers, int total, String city, int cartCount
});


@override $StrollerFilterCopyWith<$Res> get filter;

}
/// @nodoc
class __$CatalogDataCopyWithImpl<$Res>
    implements _$CatalogDataCopyWith<$Res> {
  __$CatalogDataCopyWithImpl(this._self, this._then);

  final _CatalogData _self;
  final $Res Function(_CatalogData) _then;

/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,Object? types = null,Object? strollers = null,Object? total = null,Object? city = null,Object? cartCount = null,}) {
  return _then(_CatalogData(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as StrollerFilter,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<StrollerTypeInfo>,strollers: null == strollers ? _self._strollers : strollers // ignore: cast_nullable_to_non_nullable
as List<Stroller>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CatalogData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerFilterCopyWith<$Res> get filter {
  
  return $StrollerFilterCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

// dart format on
