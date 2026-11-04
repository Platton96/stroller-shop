// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopVM {

 String get name; String get tagline; String get address; String get phone; String get workingHours; List<ShopDeliveryVM> get delivery; List<String> get payment; String get returns; String get warranty; String get testDrive; String get disclaimer;
/// Create a copy of ShopVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopVMCopyWith<ShopVM> get copyWith => _$ShopVMCopyWithImpl<ShopVM>(this as ShopVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopVM&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.tagline, _this.tagline) || other.tagline == _this.tagline)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.workingHours, _this.workingHours) || other.workingHours == _this.workingHours)&&const DeepCollectionEquality().equals(other.delivery, _this.delivery)&&const DeepCollectionEquality().equals(other.payment, _this.payment)&&(identical(other.returns, _this.returns) || other.returns == _this.returns)&&(identical(other.warranty, _this.warranty) || other.warranty == _this.warranty)&&(identical(other.testDrive, _this.testDrive) || other.testDrive == _this.testDrive)&&(identical(other.disclaimer, _this.disclaimer) || other.disclaimer == _this.disclaimer));
}


@override
int get hashCode {
  final _this = this as ShopVM;
  return Object.hash(runtimeType,_this.name,_this.tagline,_this.address,_this.phone,_this.workingHours,const DeepCollectionEquality().hash(_this.delivery),const DeepCollectionEquality().hash(_this.payment),_this.returns,_this.warranty,_this.testDrive,_this.disclaimer);
}

@override
String toString() {
  final _this = this as ShopVM;
  return 'ShopVM(name: ${_this.name}, tagline: ${_this.tagline}, address: ${_this.address}, phone: ${_this.phone}, workingHours: ${_this.workingHours}, delivery: ${_this.delivery}, payment: ${_this.payment}, returns: ${_this.returns}, warranty: ${_this.warranty}, testDrive: ${_this.testDrive}, disclaimer: ${_this.disclaimer})';
}


}

/// @nodoc
abstract mixin class $ShopVMCopyWith<$Res>  {
  factory $ShopVMCopyWith(ShopVM value, $Res Function(ShopVM) _then) = _$ShopVMCopyWithImpl;
@useResult
$Res call({
 String name, String tagline, String address, String phone, String workingHours, List<ShopDeliveryVM> delivery, List<String> payment, String returns, String warranty, String testDrive, String disclaimer
});




}
/// @nodoc
class _$ShopVMCopyWithImpl<$Res>
    implements $ShopVMCopyWith<$Res> {
  _$ShopVMCopyWithImpl(this._self, this._then);

  final ShopVM _self;
  final $Res Function(ShopVM) _then;

/// Create a copy of ShopVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? tagline = null,Object? address = null,Object? phone = null,Object? workingHours = null,Object? delivery = null,Object? payment = null,Object? returns = null,Object? warranty = null,Object? testDrive = null,Object? disclaimer = null,}) {
  return _then(ShopVM(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<ShopDeliveryVM>,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as List<String>,returns: null == returns ? _self.returns : returns // ignore: cast_nullable_to_non_nullable
as String,warranty: null == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String,testDrive: null == testDrive ? _self.testDrive : testDrive // ignore: cast_nullable_to_non_nullable
as String,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopVM].
extension ShopVMPatterns on ShopVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopVM value)  $default,){
final _that = this;
switch (_that) {
case _ShopVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopVM value)?  $default,){
final _that = this;
switch (_that) {
case _ShopVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String tagline,  String address,  String phone,  String workingHours,  List<ShopDeliveryVM> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopVM() when $default != null:
return $default(_that.name,_that.tagline,_that.address,_that.phone,_that.workingHours,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String tagline,  String address,  String phone,  String workingHours,  List<ShopDeliveryVM> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)  $default,) {final _that = this;
switch (_that) {
case _ShopVM():
return $default(_that.name,_that.tagline,_that.address,_that.phone,_that.workingHours,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String tagline,  String address,  String phone,  String workingHours,  List<ShopDeliveryVM> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)?  $default,) {final _that = this;
switch (_that) {
case _ShopVM() when $default != null:
return $default(_that.name,_that.tagline,_that.address,_that.phone,_that.workingHours,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
  return null;

}
}

}

/// @nodoc


class _ShopVM implements ShopVM {
  const _ShopVM({required this.name, required this.tagline, required this.address, required this.phone, required this.workingHours, required  List<ShopDeliveryVM> delivery, required  List<String> payment, required this.returns, required this.warranty, required this.testDrive, required this.disclaimer}): _delivery = delivery,_payment = payment;
  

@override final  String name;
@override final  String tagline;
@override final  String address;
@override final  String phone;
@override final  String workingHours;
 final  List<ShopDeliveryVM> _delivery;
@override List<ShopDeliveryVM> get delivery {
  if (_delivery is EqualUnmodifiableListView) return _delivery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_delivery);
}

 final  List<String> _payment;
@override List<String> get payment {
  if (_payment is EqualUnmodifiableListView) return _payment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payment);
}

@override final  String returns;
@override final  String warranty;
@override final  String testDrive;
@override final  String disclaimer;

/// Create a copy of ShopVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopVMCopyWith<_ShopVM> get copyWith => __$ShopVMCopyWithImpl<_ShopVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopVM&&(identical(other.name, name) || other.name == name)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other.delivery, _delivery)&&const DeepCollectionEquality().equals(other.payment, _payment)&&(identical(other.returns, returns) || other.returns == returns)&&(identical(other.warranty, warranty) || other.warranty == warranty)&&(identical(other.testDrive, testDrive) || other.testDrive == testDrive)&&(identical(other.disclaimer, disclaimer) || other.disclaimer == disclaimer));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,tagline,address,phone,workingHours,const DeepCollectionEquality().hash(_delivery),const DeepCollectionEquality().hash(_payment),returns,warranty,testDrive,disclaimer);
}

@override
String toString() {
    return 'ShopVM(name: $name, tagline: $tagline, address: $address, phone: $phone, workingHours: $workingHours, delivery: $delivery, payment: $payment, returns: $returns, warranty: $warranty, testDrive: $testDrive, disclaimer: $disclaimer)';
}


}

/// @nodoc
abstract mixin class _$ShopVMCopyWith<$Res> implements $ShopVMCopyWith<$Res> {
  factory _$ShopVMCopyWith(_ShopVM value, $Res Function(_ShopVM) _then) = __$ShopVMCopyWithImpl;
@override @useResult
$Res call({
 String name, String tagline, String address, String phone, String workingHours, List<ShopDeliveryVM> delivery, List<String> payment, String returns, String warranty, String testDrive, String disclaimer
});




}
/// @nodoc
class __$ShopVMCopyWithImpl<$Res>
    implements _$ShopVMCopyWith<$Res> {
  __$ShopVMCopyWithImpl(this._self, this._then);

  final _ShopVM _self;
  final $Res Function(_ShopVM) _then;

/// Create a copy of ShopVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? tagline = null,Object? address = null,Object? phone = null,Object? workingHours = null,Object? delivery = null,Object? payment = null,Object? returns = null,Object? warranty = null,Object? testDrive = null,Object? disclaimer = null,}) {
  return _then(_ShopVM(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self._delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<ShopDeliveryVM>,payment: null == payment ? _self._payment : payment // ignore: cast_nullable_to_non_nullable
as List<String>,returns: null == returns ? _self.returns : returns // ignore: cast_nullable_to_non_nullable
as String,warranty: null == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String,testDrive: null == testDrive ? _self.testDrive : testDrive // ignore: cast_nullable_to_non_nullable
as String,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
