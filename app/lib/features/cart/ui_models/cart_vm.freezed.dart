// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartVM {

 List<CartLineVM> get lines; List<DeliveryOptionVM> get deliveryOptions; int get itemsCount; int get goodsTotalByn; int get shippingByn; int get totalByn; bool get isEmpty;
/// Create a copy of CartVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartVMCopyWith<CartVM> get copyWith => _$CartVMCopyWithImpl<CartVM>(this as CartVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartVM&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&const DeepCollectionEquality().equals(other.deliveryOptions, _this.deliveryOptions)&&(identical(other.itemsCount, _this.itemsCount) || other.itemsCount == _this.itemsCount)&&(identical(other.goodsTotalByn, _this.goodsTotalByn) || other.goodsTotalByn == _this.goodsTotalByn)&&(identical(other.shippingByn, _this.shippingByn) || other.shippingByn == _this.shippingByn)&&(identical(other.totalByn, _this.totalByn) || other.totalByn == _this.totalByn)&&(identical(other.isEmpty, _this.isEmpty) || other.isEmpty == _this.isEmpty));
}


@override
int get hashCode {
  final _this = this as CartVM;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.lines),const DeepCollectionEquality().hash(_this.deliveryOptions),_this.itemsCount,_this.goodsTotalByn,_this.shippingByn,_this.totalByn,_this.isEmpty);
}

@override
String toString() {
  final _this = this as CartVM;
  return 'CartVM(lines: ${_this.lines}, deliveryOptions: ${_this.deliveryOptions}, itemsCount: ${_this.itemsCount}, goodsTotalByn: ${_this.goodsTotalByn}, shippingByn: ${_this.shippingByn}, totalByn: ${_this.totalByn}, isEmpty: ${_this.isEmpty})';
}


}

/// @nodoc
abstract mixin class $CartVMCopyWith<$Res>  {
  factory $CartVMCopyWith(CartVM value, $Res Function(CartVM) _then) = _$CartVMCopyWithImpl;
@useResult
$Res call({
 List<CartLineVM> lines, List<DeliveryOptionVM> deliveryOptions, int itemsCount, int goodsTotalByn, int shippingByn, int totalByn, bool isEmpty
});




}
/// @nodoc
class _$CartVMCopyWithImpl<$Res>
    implements $CartVMCopyWith<$Res> {
  _$CartVMCopyWithImpl(this._self, this._then);

  final CartVM _self;
  final $Res Function(CartVM) _then;

/// Create a copy of CartVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lines = null,Object? deliveryOptions = null,Object? itemsCount = null,Object? goodsTotalByn = null,Object? shippingByn = null,Object? totalByn = null,Object? isEmpty = null,}) {
  return _then(CartVM(
lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartLineVM>,deliveryOptions: null == deliveryOptions ? _self.deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOptionVM>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,goodsTotalByn: null == goodsTotalByn ? _self.goodsTotalByn : goodsTotalByn // ignore: cast_nullable_to_non_nullable
as int,shippingByn: null == shippingByn ? _self.shippingByn : shippingByn // ignore: cast_nullable_to_non_nullable
as int,totalByn: null == totalByn ? _self.totalByn : totalByn // ignore: cast_nullable_to_non_nullable
as int,isEmpty: null == isEmpty ? _self.isEmpty : isEmpty // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartVM].
extension CartVMPatterns on CartVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartVM value)  $default,){
final _that = this;
switch (_that) {
case _CartVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartVM value)?  $default,){
final _that = this;
switch (_that) {
case _CartVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartLineVM> lines,  List<DeliveryOptionVM> deliveryOptions,  int itemsCount,  int goodsTotalByn,  int shippingByn,  int totalByn,  bool isEmpty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartVM() when $default != null:
return $default(_that.lines,_that.deliveryOptions,_that.itemsCount,_that.goodsTotalByn,_that.shippingByn,_that.totalByn,_that.isEmpty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartLineVM> lines,  List<DeliveryOptionVM> deliveryOptions,  int itemsCount,  int goodsTotalByn,  int shippingByn,  int totalByn,  bool isEmpty)  $default,) {final _that = this;
switch (_that) {
case _CartVM():
return $default(_that.lines,_that.deliveryOptions,_that.itemsCount,_that.goodsTotalByn,_that.shippingByn,_that.totalByn,_that.isEmpty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartLineVM> lines,  List<DeliveryOptionVM> deliveryOptions,  int itemsCount,  int goodsTotalByn,  int shippingByn,  int totalByn,  bool isEmpty)?  $default,) {final _that = this;
switch (_that) {
case _CartVM() when $default != null:
return $default(_that.lines,_that.deliveryOptions,_that.itemsCount,_that.goodsTotalByn,_that.shippingByn,_that.totalByn,_that.isEmpty);case _:
  return null;

}
}

}

/// @nodoc


class _CartVM implements CartVM {
  const _CartVM({required  List<CartLineVM> lines, required  List<DeliveryOptionVM> deliveryOptions, required this.itemsCount, required this.goodsTotalByn, required this.shippingByn, required this.totalByn, required this.isEmpty}): _lines = lines,_deliveryOptions = deliveryOptions;
  

 final  List<CartLineVM> _lines;
@override List<CartLineVM> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

 final  List<DeliveryOptionVM> _deliveryOptions;
@override List<DeliveryOptionVM> get deliveryOptions {
  if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryOptions);
}

@override final  int itemsCount;
@override final  int goodsTotalByn;
@override final  int shippingByn;
@override final  int totalByn;
@override final  bool isEmpty;

/// Create a copy of CartVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartVMCopyWith<_CartVM> get copyWith => __$CartVMCopyWithImpl<_CartVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartVM&&const DeepCollectionEquality().equals(other.lines, _lines)&&const DeepCollectionEquality().equals(other.deliveryOptions, _deliveryOptions)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount)&&(identical(other.goodsTotalByn, goodsTotalByn) || other.goodsTotalByn == goodsTotalByn)&&(identical(other.shippingByn, shippingByn) || other.shippingByn == shippingByn)&&(identical(other.totalByn, totalByn) || other.totalByn == totalByn)&&(identical(other.isEmpty, isEmpty) || other.isEmpty == isEmpty));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_lines),const DeepCollectionEquality().hash(_deliveryOptions),itemsCount,goodsTotalByn,shippingByn,totalByn,isEmpty);
}

@override
String toString() {
    return 'CartVM(lines: $lines, deliveryOptions: $deliveryOptions, itemsCount: $itemsCount, goodsTotalByn: $goodsTotalByn, shippingByn: $shippingByn, totalByn: $totalByn, isEmpty: $isEmpty)';
}


}

/// @nodoc
abstract mixin class _$CartVMCopyWith<$Res> implements $CartVMCopyWith<$Res> {
  factory _$CartVMCopyWith(_CartVM value, $Res Function(_CartVM) _then) = __$CartVMCopyWithImpl;
@override @useResult
$Res call({
 List<CartLineVM> lines, List<DeliveryOptionVM> deliveryOptions, int itemsCount, int goodsTotalByn, int shippingByn, int totalByn, bool isEmpty
});




}
/// @nodoc
class __$CartVMCopyWithImpl<$Res>
    implements _$CartVMCopyWith<$Res> {
  __$CartVMCopyWithImpl(this._self, this._then);

  final _CartVM _self;
  final $Res Function(_CartVM) _then;

/// Create a copy of CartVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lines = null,Object? deliveryOptions = null,Object? itemsCount = null,Object? goodsTotalByn = null,Object? shippingByn = null,Object? totalByn = null,Object? isEmpty = null,}) {
  return _then(_CartVM(
lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<CartLineVM>,deliveryOptions: null == deliveryOptions ? _self._deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOptionVM>,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,goodsTotalByn: null == goodsTotalByn ? _self.goodsTotalByn : goodsTotalByn // ignore: cast_nullable_to_non_nullable
as int,shippingByn: null == shippingByn ? _self.shippingByn : shippingByn // ignore: cast_nullable_to_non_nullable
as int,totalByn: null == totalByn ? _self.totalByn : totalByn // ignore: cast_nullable_to_non_nullable
as int,isEmpty: null == isEmpty ? _self.isEmpty : isEmpty // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
