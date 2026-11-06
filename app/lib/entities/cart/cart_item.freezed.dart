// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartItem {

 Stroller get stroller; String get color; int get quantity; bool get isAddedByAssistant;
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCopyWith<CartItem> get copyWith => _$CartItemCopyWithImpl<CartItem>(this as CartItem, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItem&&(identical(other.stroller, _this.stroller) || other.stroller == _this.stroller)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.isAddedByAssistant, _this.isAddedByAssistant) || other.isAddedByAssistant == _this.isAddedByAssistant));
}


@override
int get hashCode {
  final _this = this as CartItem;
  return Object.hash(runtimeType,_this.stroller,_this.color,_this.quantity,_this.isAddedByAssistant);
}

@override
String toString() {
  final _this = this as CartItem;
  return 'CartItem(stroller: ${_this.stroller}, color: ${_this.color}, quantity: ${_this.quantity}, isAddedByAssistant: ${_this.isAddedByAssistant})';
}


}

/// @nodoc
abstract mixin class $CartItemCopyWith<$Res>  {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) _then) = _$CartItemCopyWithImpl;
@useResult
$Res call({
 Stroller stroller, String color, int quantity, bool isAddedByAssistant
});


$StrollerCopyWith<$Res> get stroller;

}
/// @nodoc
class _$CartItemCopyWithImpl<$Res>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._self, this._then);

  final CartItem _self;
  final $Res Function(CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stroller = null,Object? color = null,Object? quantity = null,Object? isAddedByAssistant = null,}) {
  return _then(CartItem(
stroller: null == stroller ? _self.stroller : stroller // ignore: cast_nullable_to_non_nullable
as Stroller,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isAddedByAssistant: null == isAddedByAssistant ? _self.isAddedByAssistant : isAddedByAssistant // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerCopyWith<$Res> get stroller {
  
  return $StrollerCopyWith<$Res>(_self.stroller, (value) {
    return _then(_self.copyWith(stroller: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartItem].
extension CartItemPatterns on CartItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItem value)  $default,){
final _that = this;
switch (_that) {
case _CartItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItem value)?  $default,){
final _that = this;
switch (_that) {
case _CartItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Stroller stroller,  String color,  int quantity,  bool isAddedByAssistant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.stroller,_that.color,_that.quantity,_that.isAddedByAssistant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Stroller stroller,  String color,  int quantity,  bool isAddedByAssistant)  $default,) {final _that = this;
switch (_that) {
case _CartItem():
return $default(_that.stroller,_that.color,_that.quantity,_that.isAddedByAssistant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Stroller stroller,  String color,  int quantity,  bool isAddedByAssistant)?  $default,) {final _that = this;
switch (_that) {
case _CartItem() when $default != null:
return $default(_that.stroller,_that.color,_that.quantity,_that.isAddedByAssistant);case _:
  return null;

}
}

}

/// @nodoc


class _CartItem implements CartItem {
  const _CartItem({required this.stroller, required this.color, required this.quantity, required this.isAddedByAssistant});
  

@override final  Stroller stroller;
@override final  String color;
@override final  int quantity;
@override final  bool isAddedByAssistant;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemCopyWith<_CartItem> get copyWith => __$CartItemCopyWithImpl<_CartItem>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItem&&(identical(other.stroller, stroller) || other.stroller == stroller)&&(identical(other.color, color) || other.color == color)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.isAddedByAssistant, isAddedByAssistant) || other.isAddedByAssistant == isAddedByAssistant));
}


@override
int get hashCode {
    return Object.hash(runtimeType,stroller,color,quantity,isAddedByAssistant);
}

@override
String toString() {
    return 'CartItem(stroller: $stroller, color: $color, quantity: $quantity, isAddedByAssistant: $isAddedByAssistant)';
}


}

/// @nodoc
abstract mixin class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) _then) = __$CartItemCopyWithImpl;
@override @useResult
$Res call({
 Stroller stroller, String color, int quantity, bool isAddedByAssistant
});


@override $StrollerCopyWith<$Res> get stroller;

}
/// @nodoc
class __$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(this._self, this._then);

  final _CartItem _self;
  final $Res Function(_CartItem) _then;

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stroller = null,Object? color = null,Object? quantity = null,Object? isAddedByAssistant = null,}) {
  return _then(_CartItem(
stroller: null == stroller ? _self.stroller : stroller // ignore: cast_nullable_to_non_nullable
as Stroller,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,isAddedByAssistant: null == isAddedByAssistant ? _self.isAddedByAssistant : isAddedByAssistant // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CartItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerCopyWith<$Res> get stroller {
  
  return $StrollerCopyWith<$Res>(_self.stroller, (value) {
    return _then(_self.copyWith(stroller: value));
  });
}
}

// dart format on
