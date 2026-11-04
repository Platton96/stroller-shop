// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent()';
}


}

/// @nodoc
class $CartEventCopyWith<$Res>  {
$CartEventCopyWith(CartEvent _, $Res Function(CartEvent) __);
}


/// Adds pattern-matching-related methods to [CartEvent].
extension CartEventPatterns on CartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _RetryPressedEvent value)?  retryPressed,TResult Function( _ItemsChangedEvent value)?  itemsChanged,TResult Function( _QuantityChangedEvent value)?  quantityChanged,TResult Function( _DeliverySelectedEvent value)?  deliverySelected,TResult Function( _CheckoutPressedEvent value)?  checkoutPressed,TResult Function( _CatalogPressedEvent value)?  catalogPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _ItemsChangedEvent() when itemsChanged != null:
return itemsChanged(_that);case _QuantityChangedEvent() when quantityChanged != null:
return quantityChanged(_that);case _DeliverySelectedEvent() when deliverySelected != null:
return deliverySelected(_that);case _CheckoutPressedEvent() when checkoutPressed != null:
return checkoutPressed(_that);case _CatalogPressedEvent() when catalogPressed != null:
return catalogPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _RetryPressedEvent value)  retryPressed,required TResult Function( _ItemsChangedEvent value)  itemsChanged,required TResult Function( _QuantityChangedEvent value)  quantityChanged,required TResult Function( _DeliverySelectedEvent value)  deliverySelected,required TResult Function( _CheckoutPressedEvent value)  checkoutPressed,required TResult Function( _CatalogPressedEvent value)  catalogPressed,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _RetryPressedEvent():
return retryPressed(_that);case _ItemsChangedEvent():
return itemsChanged(_that);case _QuantityChangedEvent():
return quantityChanged(_that);case _DeliverySelectedEvent():
return deliverySelected(_that);case _CheckoutPressedEvent():
return checkoutPressed(_that);case _CatalogPressedEvent():
return catalogPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _RetryPressedEvent value)?  retryPressed,TResult? Function( _ItemsChangedEvent value)?  itemsChanged,TResult? Function( _QuantityChangedEvent value)?  quantityChanged,TResult? Function( _DeliverySelectedEvent value)?  deliverySelected,TResult? Function( _CheckoutPressedEvent value)?  checkoutPressed,TResult? Function( _CatalogPressedEvent value)?  catalogPressed,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _ItemsChangedEvent() when itemsChanged != null:
return itemsChanged(_that);case _QuantityChangedEvent() when quantityChanged != null:
return quantityChanged(_that);case _DeliverySelectedEvent() when deliverySelected != null:
return deliverySelected(_that);case _CheckoutPressedEvent() when checkoutPressed != null:
return checkoutPressed(_that);case _CatalogPressedEvent() when catalogPressed != null:
return catalogPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  retryPressed,TResult Function( List<CartItem> items)?  itemsChanged,TResult Function( String strollerId,  String color,  int delta)?  quantityChanged,TResult Function( String method)?  deliverySelected,TResult Function()?  checkoutPressed,TResult Function()?  catalogPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _ItemsChangedEvent() when itemsChanged != null:
return itemsChanged(_that.items);case _QuantityChangedEvent() when quantityChanged != null:
return quantityChanged(_that.strollerId,_that.color,_that.delta);case _DeliverySelectedEvent() when deliverySelected != null:
return deliverySelected(_that.method);case _CheckoutPressedEvent() when checkoutPressed != null:
return checkoutPressed();case _CatalogPressedEvent() when catalogPressed != null:
return catalogPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  retryPressed,required TResult Function( List<CartItem> items)  itemsChanged,required TResult Function( String strollerId,  String color,  int delta)  quantityChanged,required TResult Function( String method)  deliverySelected,required TResult Function()  checkoutPressed,required TResult Function()  catalogPressed,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _RetryPressedEvent():
return retryPressed();case _ItemsChangedEvent():
return itemsChanged(_that.items);case _QuantityChangedEvent():
return quantityChanged(_that.strollerId,_that.color,_that.delta);case _DeliverySelectedEvent():
return deliverySelected(_that.method);case _CheckoutPressedEvent():
return checkoutPressed();case _CatalogPressedEvent():
return catalogPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  retryPressed,TResult? Function( List<CartItem> items)?  itemsChanged,TResult? Function( String strollerId,  String color,  int delta)?  quantityChanged,TResult? Function( String method)?  deliverySelected,TResult? Function()?  checkoutPressed,TResult? Function()?  catalogPressed,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _ItemsChangedEvent() when itemsChanged != null:
return itemsChanged(_that.items);case _QuantityChangedEvent() when quantityChanged != null:
return quantityChanged(_that.strollerId,_that.color,_that.delta);case _DeliverySelectedEvent() when deliverySelected != null:
return deliverySelected(_that.method);case _CheckoutPressedEvent() when checkoutPressed != null:
return checkoutPressed();case _CatalogPressedEvent() when catalogPressed != null:
return catalogPressed();case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements CartEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.init()';
}


}




/// @nodoc


class _RetryPressedEvent implements CartEvent {
  const _RetryPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.retryPressed()';
}


}




/// @nodoc


class _ItemsChangedEvent implements CartEvent {
  const _ItemsChangedEvent({required  List<CartItem> items}): _items = items;
  

 final  List<CartItem> _items;
 List<CartItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemsChangedEventCopyWith<_ItemsChangedEvent> get copyWith => __$ItemsChangedEventCopyWithImpl<_ItemsChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemsChangedEvent&&const DeepCollectionEquality().equals(other.items, _items));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'CartEvent.itemsChanged(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ItemsChangedEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$ItemsChangedEventCopyWith(_ItemsChangedEvent value, $Res Function(_ItemsChangedEvent) _then) = __$ItemsChangedEventCopyWithImpl;
@useResult
$Res call({
 List<CartItem> items
});




}
/// @nodoc
class __$ItemsChangedEventCopyWithImpl<$Res>
    implements _$ItemsChangedEventCopyWith<$Res> {
  __$ItemsChangedEventCopyWithImpl(this._self, this._then);

  final _ItemsChangedEvent _self;
  final $Res Function(_ItemsChangedEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ItemsChangedEvent(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItem>,
  ));
}


}

/// @nodoc


class _QuantityChangedEvent implements CartEvent {
  const _QuantityChangedEvent({required this.strollerId, required this.color, required this.delta});
  

 final  String strollerId;
 final  String color;
 final  int delta;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuantityChangedEventCopyWith<_QuantityChangedEvent> get copyWith => __$QuantityChangedEventCopyWithImpl<_QuantityChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuantityChangedEvent&&(identical(other.strollerId, strollerId) || other.strollerId == strollerId)&&(identical(other.color, color) || other.color == color)&&(identical(other.delta, delta) || other.delta == delta));
}


@override
int get hashCode {
    return Object.hash(runtimeType,strollerId,color,delta);
}

@override
String toString() {
    return 'CartEvent.quantityChanged(strollerId: $strollerId, color: $color, delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$QuantityChangedEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$QuantityChangedEventCopyWith(_QuantityChangedEvent value, $Res Function(_QuantityChangedEvent) _then) = __$QuantityChangedEventCopyWithImpl;
@useResult
$Res call({
 String strollerId, String color, int delta
});




}
/// @nodoc
class __$QuantityChangedEventCopyWithImpl<$Res>
    implements _$QuantityChangedEventCopyWith<$Res> {
  __$QuantityChangedEventCopyWithImpl(this._self, this._then);

  final _QuantityChangedEvent _self;
  final $Res Function(_QuantityChangedEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,Object? color = null,Object? delta = null,}) {
  return _then(_QuantityChangedEvent(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DeliverySelectedEvent implements CartEvent {
  const _DeliverySelectedEvent({required this.method});
  

 final  String method;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliverySelectedEventCopyWith<_DeliverySelectedEvent> get copyWith => __$DeliverySelectedEventCopyWithImpl<_DeliverySelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliverySelectedEvent&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode {
    return Object.hash(runtimeType,method);
}

@override
String toString() {
    return 'CartEvent.deliverySelected(method: $method)';
}


}

/// @nodoc
abstract mixin class _$DeliverySelectedEventCopyWith<$Res> implements $CartEventCopyWith<$Res> {
  factory _$DeliverySelectedEventCopyWith(_DeliverySelectedEvent value, $Res Function(_DeliverySelectedEvent) _then) = __$DeliverySelectedEventCopyWithImpl;
@useResult
$Res call({
 String method
});




}
/// @nodoc
class __$DeliverySelectedEventCopyWithImpl<$Res>
    implements _$DeliverySelectedEventCopyWith<$Res> {
  __$DeliverySelectedEventCopyWithImpl(this._self, this._then);

  final _DeliverySelectedEvent _self;
  final $Res Function(_DeliverySelectedEvent) _then;

/// Create a copy of CartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? method = null,}) {
  return _then(_DeliverySelectedEvent(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CheckoutPressedEvent implements CartEvent {
  const _CheckoutPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckoutPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.checkoutPressed()';
}


}




/// @nodoc


class _CatalogPressedEvent implements CartEvent {
  const _CatalogPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CartEvent.catalogPressed()';
}


}




/// @nodoc
mixin _$CartState {

 CartVM get data;
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartStateCopyWith<CartState> get copyWith => _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as CartState;
  return Object.hash(runtimeType,_this.data);
}

@override
String toString() {
  final _this = this as CartState;
  return 'CartState(data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res>  {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) = _$CartStateCopyWithImpl;
@useResult
$Res call({
 CartVM data
});


$CartVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CartStateCopyWithImpl<$Res>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartVM,
  ));
}
/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVMCopyWith<$Res> get data {
  
  return $CartVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CartInitialState value)?  initial,TResult Function( CartLoadingState value)?  loading,TResult Function( CartLoadedState value)?  loaded,TResult Function( CartErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that);case CartLoadingState() when loading != null:
return loading(_that);case CartLoadedState() when loaded != null:
return loaded(_that);case CartErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CartInitialState value)  initial,required TResult Function( CartLoadingState value)  loading,required TResult Function( CartLoadedState value)  loaded,required TResult Function( CartErrorState value)  error,}){
final _that = this;
switch (_that) {
case CartInitialState():
return initial(_that);case CartLoadingState():
return loading(_that);case CartLoadedState():
return loaded(_that);case CartErrorState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CartInitialState value)?  initial,TResult? Function( CartLoadingState value)?  loading,TResult? Function( CartLoadedState value)?  loaded,TResult? Function( CartErrorState value)?  error,}){
final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that);case CartLoadingState() when loading != null:
return loading(_that);case CartLoadedState() when loaded != null:
return loaded(_that);case CartErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CartVM data)?  initial,TResult Function( CartVM data)?  loading,TResult Function( CartVM data)?  loaded,TResult Function( CartVM data,  Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that.data);case CartLoadingState() when loading != null:
return loading(_that.data);case CartLoadedState() when loaded != null:
return loaded(_that.data);case CartErrorState() when error != null:
return error(_that.data,_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CartVM data)  initial,required TResult Function( CartVM data)  loading,required TResult Function( CartVM data)  loaded,required TResult Function( CartVM data,  Exception exception)  error,}) {final _that = this;
switch (_that) {
case CartInitialState():
return initial(_that.data);case CartLoadingState():
return loading(_that.data);case CartLoadedState():
return loaded(_that.data);case CartErrorState():
return error(_that.data,_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CartVM data)?  initial,TResult? Function( CartVM data)?  loading,TResult? Function( CartVM data)?  loaded,TResult? Function( CartVM data,  Exception exception)?  error,}) {final _that = this;
switch (_that) {
case CartInitialState() when initial != null:
return initial(_that.data);case CartLoadingState() when loading != null:
return loading(_that.data);case CartLoadedState() when loaded != null:
return loaded(_that.data);case CartErrorState() when error != null:
return error(_that.data,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class CartInitialState implements CartState {
  const CartInitialState({required this.data});
  

@override final  CartVM data;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartInitialStateCopyWith<CartInitialState> get copyWith => _$CartInitialStateCopyWithImpl<CartInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CartState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartInitialStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartInitialStateCopyWith(CartInitialState value, $Res Function(CartInitialState) _then) = _$CartInitialStateCopyWithImpl;
@override @useResult
$Res call({
 CartVM data
});


@override $CartVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CartInitialStateCopyWithImpl<$Res>
    implements $CartInitialStateCopyWith<$Res> {
  _$CartInitialStateCopyWithImpl(this._self, this._then);

  final CartInitialState _self;
  final $Res Function(CartInitialState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CartInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartVM,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVMCopyWith<$Res> get data {
  
  return $CartVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CartLoadingState implements CartState {
  const CartLoadingState({required this.data});
  

@override final  CartVM data;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartLoadingStateCopyWith<CartLoadingState> get copyWith => _$CartLoadingStateCopyWithImpl<CartLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLoadingState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CartState.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartLoadingStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartLoadingStateCopyWith(CartLoadingState value, $Res Function(CartLoadingState) _then) = _$CartLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 CartVM data
});


@override $CartVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CartLoadingStateCopyWithImpl<$Res>
    implements $CartLoadingStateCopyWith<$Res> {
  _$CartLoadingStateCopyWithImpl(this._self, this._then);

  final CartLoadingState _self;
  final $Res Function(CartLoadingState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CartLoadingState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartVM,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVMCopyWith<$Res> get data {
  
  return $CartVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CartLoadedState implements CartState {
  const CartLoadedState({required this.data});
  

@override final  CartVM data;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartLoadedStateCopyWith<CartLoadedState> get copyWith => _$CartLoadedStateCopyWithImpl<CartLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLoadedState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CartState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $CartLoadedStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartLoadedStateCopyWith(CartLoadedState value, $Res Function(CartLoadedState) _then) = _$CartLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 CartVM data
});


@override $CartVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CartLoadedStateCopyWithImpl<$Res>
    implements $CartLoadedStateCopyWith<$Res> {
  _$CartLoadedStateCopyWithImpl(this._self, this._then);

  final CartLoadedState _self;
  final $Res Function(CartLoadedState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CartLoadedState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartVM,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVMCopyWith<$Res> get data {
  
  return $CartVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CartErrorState implements CartState, BlocErrorStateInterface {
  const CartErrorState({required this.data, required this.exception});
  

@override final  CartVM data;
 final  Exception exception;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartErrorStateCopyWith<CartErrorState> get copyWith => _$CartErrorStateCopyWithImpl<CartErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartErrorState&&(identical(other.data, data) || other.data == data)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,exception);
}

@override
String toString() {
    return 'CartState.error(data: $data, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CartErrorStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartErrorStateCopyWith(CartErrorState value, $Res Function(CartErrorState) _then) = _$CartErrorStateCopyWithImpl;
@override @useResult
$Res call({
 CartVM data, Exception exception
});


@override $CartVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CartErrorStateCopyWithImpl<$Res>
    implements $CartErrorStateCopyWith<$Res> {
  _$CartErrorStateCopyWithImpl(this._self, this._then);

  final CartErrorState _self;
  final $Res Function(CartErrorState) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? exception = null,}) {
  return _then(CartErrorState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CartVM,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CartVMCopyWith<$Res> get data {
  
  return $CartVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
