// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Cart {

 List<CartItem> get items; List<DeliveryOption> get deliveryOptions; String? get selectedDeliveryMethod;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Cart;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&const DeepCollectionEquality().equals(other.items, _this.items)&&const DeepCollectionEquality().equals(other.deliveryOptions, _this.deliveryOptions)&&(identical(other.selectedDeliveryMethod, _this.selectedDeliveryMethod) || other.selectedDeliveryMethod == _this.selectedDeliveryMethod));
}


@override
int get hashCode {
  final _this = this as Cart;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),const DeepCollectionEquality().hash(_this.deliveryOptions),_this.selectedDeliveryMethod);
}

@override
String toString() {
  final _this = this as Cart;
  return 'Cart(items: ${_this.items}, deliveryOptions: ${_this.deliveryOptions}, selectedDeliveryMethod: ${_this.selectedDeliveryMethod})';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 List<CartItem> items, List<DeliveryOption> deliveryOptions, String? selectedDeliveryMethod
});




}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? deliveryOptions = null,Object? selectedDeliveryMethod = freezed,}) {
  return _then(Cart(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,deliveryOptions: null == deliveryOptions ? _self.deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>,selectedDeliveryMethod: freezed == selectedDeliveryMethod ? _self.selectedDeliveryMethod : selectedDeliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItem> items,  List<DeliveryOption> deliveryOptions,  String? selectedDeliveryMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.items,_that.deliveryOptions,_that.selectedDeliveryMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItem> items,  List<DeliveryOption> deliveryOptions,  String? selectedDeliveryMethod)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.items,_that.deliveryOptions,_that.selectedDeliveryMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItem> items,  List<DeliveryOption> deliveryOptions,  String? selectedDeliveryMethod)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.items,_that.deliveryOptions,_that.selectedDeliveryMethod);case _:
  return null;

}
}

}

/// @nodoc


class _Cart implements Cart {
  const _Cart({required  List<CartItem> items, required  List<DeliveryOption> deliveryOptions, required this.selectedDeliveryMethod}): _items = items,_deliveryOptions = deliveryOptions;
  

 final  List<CartItem> _items;
@override List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

 final  List<DeliveryOption> _deliveryOptions;
@override List<DeliveryOption> get deliveryOptions {
  if (_deliveryOptions is EqualUnmodifiableListView) return _deliveryOptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deliveryOptions);
}

@override final  String? selectedDeliveryMethod;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&const DeepCollectionEquality().equals(other.items, _items)&&const DeepCollectionEquality().equals(other.deliveryOptions, _deliveryOptions)&&(identical(other.selectedDeliveryMethod, selectedDeliveryMethod) || other.selectedDeliveryMethod == selectedDeliveryMethod));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),const DeepCollectionEquality().hash(_deliveryOptions),selectedDeliveryMethod);
}

@override
String toString() {
    return 'Cart(items: $items, deliveryOptions: $deliveryOptions, selectedDeliveryMethod: $selectedDeliveryMethod)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 List<CartItem> items, List<DeliveryOption> deliveryOptions, String? selectedDeliveryMethod
});




}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? deliveryOptions = null,Object? selectedDeliveryMethod = freezed,}) {
  return _then(_Cart(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,deliveryOptions: null == deliveryOptions ? _self._deliveryOptions : deliveryOptions // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>,selectedDeliveryMethod: freezed == selectedDeliveryMethod ? _self.selectedDeliveryMethod : selectedDeliveryMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
