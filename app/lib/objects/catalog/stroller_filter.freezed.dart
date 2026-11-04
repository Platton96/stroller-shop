// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroller_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StrollerFilter {

 String get query; Set<StrollerType> get types; bool get isInStockOnly; StrollerSort get sort;
/// Create a copy of StrollerFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerFilterCopyWith<StrollerFilter> get copyWith => _$StrollerFilterCopyWithImpl<StrollerFilter>(this as StrollerFilter, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StrollerFilter;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerFilter&&(identical(other.query, _this.query) || other.query == _this.query)&&const DeepCollectionEquality().equals(other.types, _this.types)&&(identical(other.isInStockOnly, _this.isInStockOnly) || other.isInStockOnly == _this.isInStockOnly)&&(identical(other.sort, _this.sort) || other.sort == _this.sort));
}


@override
int get hashCode {
  final _this = this as StrollerFilter;
  return Object.hash(runtimeType,_this.query,const DeepCollectionEquality().hash(_this.types),_this.isInStockOnly,_this.sort);
}

@override
String toString() {
  final _this = this as StrollerFilter;
  return 'StrollerFilter(query: ${_this.query}, types: ${_this.types}, isInStockOnly: ${_this.isInStockOnly}, sort: ${_this.sort})';
}


}

/// @nodoc
abstract mixin class $StrollerFilterCopyWith<$Res>  {
  factory $StrollerFilterCopyWith(StrollerFilter value, $Res Function(StrollerFilter) _then) = _$StrollerFilterCopyWithImpl;
@useResult
$Res call({
 String query, Set<StrollerType> types, bool isInStockOnly, StrollerSort sort
});




}
/// @nodoc
class _$StrollerFilterCopyWithImpl<$Res>
    implements $StrollerFilterCopyWith<$Res> {
  _$StrollerFilterCopyWithImpl(this._self, this._then);

  final StrollerFilter _self;
  final $Res Function(StrollerFilter) _then;

/// Create a copy of StrollerFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? types = null,Object? isInStockOnly = null,Object? sort = null,}) {
  return _then(StrollerFilter(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as Set<StrollerType>,isInStockOnly: null == isInStockOnly ? _self.isInStockOnly : isInStockOnly // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}

}


/// Adds pattern-matching-related methods to [StrollerFilter].
extension StrollerFilterPatterns on StrollerFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StrollerFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StrollerFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StrollerFilter value)  $default,){
final _that = this;
switch (_that) {
case _StrollerFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StrollerFilter value)?  $default,){
final _that = this;
switch (_that) {
case _StrollerFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  Set<StrollerType> types,  bool isInStockOnly,  StrollerSort sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StrollerFilter() when $default != null:
return $default(_that.query,_that.types,_that.isInStockOnly,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  Set<StrollerType> types,  bool isInStockOnly,  StrollerSort sort)  $default,) {final _that = this;
switch (_that) {
case _StrollerFilter():
return $default(_that.query,_that.types,_that.isInStockOnly,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  Set<StrollerType> types,  bool isInStockOnly,  StrollerSort sort)?  $default,) {final _that = this;
switch (_that) {
case _StrollerFilter() when $default != null:
return $default(_that.query,_that.types,_that.isInStockOnly,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _StrollerFilter implements StrollerFilter {
  const _StrollerFilter({this.query = '',  Set<StrollerType> types = const {}, this.isInStockOnly = false, this.sort = StrollerSort.relevance}): _types = types;
  

@override@JsonKey() final  String query;
 final  Set<StrollerType> _types;
@override@JsonKey() Set<StrollerType> get types {
  if (_types is EqualUnmodifiableSetView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_types);
}

@override@JsonKey() final  bool isInStockOnly;
@override@JsonKey() final  StrollerSort sort;

/// Create a copy of StrollerFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollerFilterCopyWith<_StrollerFilter> get copyWith => __$StrollerFilterCopyWithImpl<_StrollerFilter>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollerFilter&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.types, _types)&&(identical(other.isInStockOnly, isInStockOnly) || other.isInStockOnly == isInStockOnly)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_types),isInStockOnly,sort);
}

@override
String toString() {
    return 'StrollerFilter(query: $query, types: $types, isInStockOnly: $isInStockOnly, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$StrollerFilterCopyWith<$Res> implements $StrollerFilterCopyWith<$Res> {
  factory _$StrollerFilterCopyWith(_StrollerFilter value, $Res Function(_StrollerFilter) _then) = __$StrollerFilterCopyWithImpl;
@override @useResult
$Res call({
 String query, Set<StrollerType> types, bool isInStockOnly, StrollerSort sort
});




}
/// @nodoc
class __$StrollerFilterCopyWithImpl<$Res>
    implements _$StrollerFilterCopyWith<$Res> {
  __$StrollerFilterCopyWithImpl(this._self, this._then);

  final _StrollerFilter _self;
  final $Res Function(_StrollerFilter) _then;

/// Create a copy of StrollerFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? types = null,Object? isInStockOnly = null,Object? sort = null,}) {
  return _then(_StrollerFilter(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as Set<StrollerType>,isInStockOnly: null == isInStockOnly ? _self.isInStockOnly : isInStockOnly // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}


}

// dart format on
