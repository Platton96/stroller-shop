// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'strollers_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StrollersPage {

 List<Stroller> get items; int get total;
/// Create a copy of StrollersPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollersPageCopyWith<StrollersPage> get copyWith => _$StrollersPageCopyWithImpl<StrollersPage>(this as StrollersPage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StrollersPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollersPage&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.total, _this.total) || other.total == _this.total));
}


@override
int get hashCode {
  final _this = this as StrollersPage;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.total);
}

@override
String toString() {
  final _this = this as StrollersPage;
  return 'StrollersPage(items: ${_this.items}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $StrollersPageCopyWith<$Res>  {
  factory $StrollersPageCopyWith(StrollersPage value, $Res Function(StrollersPage) _then) = _$StrollersPageCopyWithImpl;
@useResult
$Res call({
 List<Stroller> items, int total
});




}
/// @nodoc
class _$StrollersPageCopyWithImpl<$Res>
    implements $StrollersPageCopyWith<$Res> {
  _$StrollersPageCopyWithImpl(this._self, this._then);

  final StrollersPage _self;
  final $Res Function(StrollersPage) _then;

/// Create a copy of StrollersPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,}) {
  return _then(StrollersPage(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Stroller>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StrollersPage].
extension StrollersPagePatterns on StrollersPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StrollersPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StrollersPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StrollersPage value)  $default,){
final _that = this;
switch (_that) {
case _StrollersPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StrollersPage value)?  $default,){
final _that = this;
switch (_that) {
case _StrollersPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Stroller> items,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StrollersPage() when $default != null:
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Stroller> items,  int total)  $default,) {final _that = this;
switch (_that) {
case _StrollersPage():
return $default(_that.items,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Stroller> items,  int total)?  $default,) {final _that = this;
switch (_that) {
case _StrollersPage() when $default != null:
return $default(_that.items,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _StrollersPage implements StrollersPage {
  const _StrollersPage({required  List<Stroller> items, required this.total}): _items = items;
  

 final  List<Stroller> _items;
@override List<Stroller> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int total;

/// Create a copy of StrollersPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollersPageCopyWith<_StrollersPage> get copyWith => __$StrollersPageCopyWithImpl<_StrollersPage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollersPage&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total);
}

@override
String toString() {
    return 'StrollersPage(items: $items, total: $total)';
}


}

/// @nodoc
abstract mixin class _$StrollersPageCopyWith<$Res> implements $StrollersPageCopyWith<$Res> {
  factory _$StrollersPageCopyWith(_StrollersPage value, $Res Function(_StrollersPage) _then) = __$StrollersPageCopyWithImpl;
@override @useResult
$Res call({
 List<Stroller> items, int total
});




}
/// @nodoc
class __$StrollersPageCopyWithImpl<$Res>
    implements _$StrollersPageCopyWith<$Res> {
  __$StrollersPageCopyWithImpl(this._self, this._then);

  final _StrollersPage _self;
  final $Res Function(_StrollersPage) _then;

/// Create a copy of StrollersPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,}) {
  return _then(_StrollersPage(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Stroller>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
