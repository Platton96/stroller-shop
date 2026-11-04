// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_delivery_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopDeliveryVM {

 String get title; String get eta; int get priceByn; int? get freeFromByn;
/// Create a copy of ShopDeliveryVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopDeliveryVMCopyWith<ShopDeliveryVM> get copyWith => _$ShopDeliveryVMCopyWithImpl<ShopDeliveryVM>(this as ShopDeliveryVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopDeliveryVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopDeliveryVM&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.eta, _this.eta) || other.eta == _this.eta)&&(identical(other.priceByn, _this.priceByn) || other.priceByn == _this.priceByn)&&(identical(other.freeFromByn, _this.freeFromByn) || other.freeFromByn == _this.freeFromByn));
}


@override
int get hashCode {
  final _this = this as ShopDeliveryVM;
  return Object.hash(runtimeType,_this.title,_this.eta,_this.priceByn,_this.freeFromByn);
}

@override
String toString() {
  final _this = this as ShopDeliveryVM;
  return 'ShopDeliveryVM(title: ${_this.title}, eta: ${_this.eta}, priceByn: ${_this.priceByn}, freeFromByn: ${_this.freeFromByn})';
}


}

/// @nodoc
abstract mixin class $ShopDeliveryVMCopyWith<$Res>  {
  factory $ShopDeliveryVMCopyWith(ShopDeliveryVM value, $Res Function(ShopDeliveryVM) _then) = _$ShopDeliveryVMCopyWithImpl;
@useResult
$Res call({
 String title, String eta, int priceByn, int? freeFromByn
});




}
/// @nodoc
class _$ShopDeliveryVMCopyWithImpl<$Res>
    implements $ShopDeliveryVMCopyWith<$Res> {
  _$ShopDeliveryVMCopyWithImpl(this._self, this._then);

  final ShopDeliveryVM _self;
  final $Res Function(ShopDeliveryVM) _then;

/// Create a copy of ShopDeliveryVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? eta = null,Object? priceByn = null,Object? freeFromByn = freezed,}) {
  return _then(ShopDeliveryVM(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopDeliveryVM].
extension ShopDeliveryVMPatterns on ShopDeliveryVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopDeliveryVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopDeliveryVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopDeliveryVM value)  $default,){
final _that = this;
switch (_that) {
case _ShopDeliveryVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopDeliveryVM value)?  $default,){
final _that = this;
switch (_that) {
case _ShopDeliveryVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String eta,  int priceByn,  int? freeFromByn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopDeliveryVM() when $default != null:
return $default(_that.title,_that.eta,_that.priceByn,_that.freeFromByn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String eta,  int priceByn,  int? freeFromByn)  $default,) {final _that = this;
switch (_that) {
case _ShopDeliveryVM():
return $default(_that.title,_that.eta,_that.priceByn,_that.freeFromByn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String eta,  int priceByn,  int? freeFromByn)?  $default,) {final _that = this;
switch (_that) {
case _ShopDeliveryVM() when $default != null:
return $default(_that.title,_that.eta,_that.priceByn,_that.freeFromByn);case _:
  return null;

}
}

}

/// @nodoc


class _ShopDeliveryVM implements ShopDeliveryVM {
  const _ShopDeliveryVM({required this.title, required this.eta, required this.priceByn, required this.freeFromByn});
  

@override final  String title;
@override final  String eta;
@override final  int priceByn;
@override final  int? freeFromByn;

/// Create a copy of ShopDeliveryVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopDeliveryVMCopyWith<_ShopDeliveryVM> get copyWith => __$ShopDeliveryVMCopyWithImpl<_ShopDeliveryVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopDeliveryVM&&(identical(other.title, title) || other.title == title)&&(identical(other.eta, eta) || other.eta == eta)&&(identical(other.priceByn, priceByn) || other.priceByn == priceByn)&&(identical(other.freeFromByn, freeFromByn) || other.freeFromByn == freeFromByn));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,eta,priceByn,freeFromByn);
}

@override
String toString() {
    return 'ShopDeliveryVM(title: $title, eta: $eta, priceByn: $priceByn, freeFromByn: $freeFromByn)';
}


}

/// @nodoc
abstract mixin class _$ShopDeliveryVMCopyWith<$Res> implements $ShopDeliveryVMCopyWith<$Res> {
  factory _$ShopDeliveryVMCopyWith(_ShopDeliveryVM value, $Res Function(_ShopDeliveryVM) _then) = __$ShopDeliveryVMCopyWithImpl;
@override @useResult
$Res call({
 String title, String eta, int priceByn, int? freeFromByn
});




}
/// @nodoc
class __$ShopDeliveryVMCopyWithImpl<$Res>
    implements _$ShopDeliveryVMCopyWith<$Res> {
  __$ShopDeliveryVMCopyWithImpl(this._self, this._then);

  final _ShopDeliveryVM _self;
  final $Res Function(_ShopDeliveryVM) _then;

/// Create a copy of ShopDeliveryVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? eta = null,Object? priceByn = null,Object? freeFromByn = freezed,}) {
  return _then(_ShopDeliveryVM(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
