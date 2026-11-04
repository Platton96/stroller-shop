// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_line_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartLineVM {

 String get strollerId; String get color; String get name; String get colorName; String get imageUrl; int get quantity; int get sumByn; bool get isAddedByAssistant;
/// Create a copy of CartLineVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartLineVMCopyWith<CartLineVM> get copyWith => _$CartLineVMCopyWithImpl<CartLineVM>(this as CartLineVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CartLineVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartLineVM&&(identical(other.strollerId, _this.strollerId) || other.strollerId == _this.strollerId)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.colorName, _this.colorName) || other.colorName == _this.colorName)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.sumByn, _this.sumByn) || other.sumByn == _this.sumByn)&&(identical(other.isAddedByAssistant, _this.isAddedByAssistant) || other.isAddedByAssistant == _this.isAddedByAssistant));
}


@override
int get hashCode {
  final _this = this as CartLineVM;
  return Object.hash(runtimeType,_this.strollerId,_this.color,_this.name,_this.colorName,_this.imageUrl,_this.quantity,_this.sumByn,_this.isAddedByAssistant);
}

@override
String toString() {
  final _this = this as CartLineVM;
  return 'CartLineVM(strollerId: ${_this.strollerId}, color: ${_this.color}, name: ${_this.name}, colorName: ${_this.colorName}, imageUrl: ${_this.imageUrl}, quantity: ${_this.quantity}, sumByn: ${_this.sumByn}, isAddedByAssistant: ${_this.isAddedByAssistant})';
}


}

/// @nodoc
abstract mixin class $CartLineVMCopyWith<$Res>  {
  factory $CartLineVMCopyWith(CartLineVM value, $Res Function(CartLineVM) _then) = _$CartLineVMCopyWithImpl;
@useResult
$Res call({
 String strollerId, String color, String name, String colorName, String imageUrl, int quantity, int sumByn, bool isAddedByAssistant
});




}
/// @nodoc
class _$CartLineVMCopyWithImpl<$Res>
    implements $CartLineVMCopyWith<$Res> {
  _$CartLineVMCopyWithImpl(this._self, this._then);

  final CartLineVM _self;
  final $Res Function(CartLineVM) _then;

/// Create a copy of CartLineVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? strollerId = null,Object? color = null,Object? name = null,Object? colorName = null,Object? imageUrl = null,Object? quantity = null,Object? sumByn = null,Object? isAddedByAssistant = null,}) {
  return _then(CartLineVM(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,colorName: null == colorName ? _self.colorName : colorName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sumByn: null == sumByn ? _self.sumByn : sumByn // ignore: cast_nullable_to_non_nullable
as int,isAddedByAssistant: null == isAddedByAssistant ? _self.isAddedByAssistant : isAddedByAssistant // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CartLineVM].
extension CartLineVMPatterns on CartLineVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartLineVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartLineVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartLineVM value)  $default,){
final _that = this;
switch (_that) {
case _CartLineVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartLineVM value)?  $default,){
final _that = this;
switch (_that) {
case _CartLineVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String strollerId,  String color,  String name,  String colorName,  String imageUrl,  int quantity,  int sumByn,  bool isAddedByAssistant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartLineVM() when $default != null:
return $default(_that.strollerId,_that.color,_that.name,_that.colorName,_that.imageUrl,_that.quantity,_that.sumByn,_that.isAddedByAssistant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String strollerId,  String color,  String name,  String colorName,  String imageUrl,  int quantity,  int sumByn,  bool isAddedByAssistant)  $default,) {final _that = this;
switch (_that) {
case _CartLineVM():
return $default(_that.strollerId,_that.color,_that.name,_that.colorName,_that.imageUrl,_that.quantity,_that.sumByn,_that.isAddedByAssistant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String strollerId,  String color,  String name,  String colorName,  String imageUrl,  int quantity,  int sumByn,  bool isAddedByAssistant)?  $default,) {final _that = this;
switch (_that) {
case _CartLineVM() when $default != null:
return $default(_that.strollerId,_that.color,_that.name,_that.colorName,_that.imageUrl,_that.quantity,_that.sumByn,_that.isAddedByAssistant);case _:
  return null;

}
}

}

/// @nodoc


class _CartLineVM implements CartLineVM {
  const _CartLineVM({required this.strollerId, required this.color, required this.name, required this.colorName, required this.imageUrl, required this.quantity, required this.sumByn, required this.isAddedByAssistant});
  

@override final  String strollerId;
@override final  String color;
@override final  String name;
@override final  String colorName;
@override final  String imageUrl;
@override final  int quantity;
@override final  int sumByn;
@override final  bool isAddedByAssistant;

/// Create a copy of CartLineVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartLineVMCopyWith<_CartLineVM> get copyWith => __$CartLineVMCopyWithImpl<_CartLineVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartLineVM&&(identical(other.strollerId, strollerId) || other.strollerId == strollerId)&&(identical(other.color, color) || other.color == color)&&(identical(other.name, name) || other.name == name)&&(identical(other.colorName, colorName) || other.colorName == colorName)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.sumByn, sumByn) || other.sumByn == sumByn)&&(identical(other.isAddedByAssistant, isAddedByAssistant) || other.isAddedByAssistant == isAddedByAssistant));
}


@override
int get hashCode {
    return Object.hash(runtimeType,strollerId,color,name,colorName,imageUrl,quantity,sumByn,isAddedByAssistant);
}

@override
String toString() {
    return 'CartLineVM(strollerId: $strollerId, color: $color, name: $name, colorName: $colorName, imageUrl: $imageUrl, quantity: $quantity, sumByn: $sumByn, isAddedByAssistant: $isAddedByAssistant)';
}


}

/// @nodoc
abstract mixin class _$CartLineVMCopyWith<$Res> implements $CartLineVMCopyWith<$Res> {
  factory _$CartLineVMCopyWith(_CartLineVM value, $Res Function(_CartLineVM) _then) = __$CartLineVMCopyWithImpl;
@override @useResult
$Res call({
 String strollerId, String color, String name, String colorName, String imageUrl, int quantity, int sumByn, bool isAddedByAssistant
});




}
/// @nodoc
class __$CartLineVMCopyWithImpl<$Res>
    implements _$CartLineVMCopyWith<$Res> {
  __$CartLineVMCopyWithImpl(this._self, this._then);

  final _CartLineVM _self;
  final $Res Function(_CartLineVM) _then;

/// Create a copy of CartLineVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? strollerId = null,Object? color = null,Object? name = null,Object? colorName = null,Object? imageUrl = null,Object? quantity = null,Object? sumByn = null,Object? isAddedByAssistant = null,}) {
  return _then(_CartLineVM(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,colorName: null == colorName ? _self.colorName : colorName // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,sumByn: null == sumByn ? _self.sumByn : sumByn // ignore: cast_nullable_to_non_nullable
as int,isAddedByAssistant: null == isAddedByAssistant ? _self.isAddedByAssistant : isAddedByAssistant // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
