// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Shop {

 String get name; String get tagline; String get city; String get address; String get phone; String get workingHours; String get currency; List<DeliveryOption> get delivery; List<String> get payment; String get returns; String get warranty; String get testDrive; String get disclaimer;
/// Create a copy of Shop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopCopyWith<Shop> get copyWith => _$ShopCopyWithImpl<Shop>(this as Shop, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Shop;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shop&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.tagline, _this.tagline) || other.tagline == _this.tagline)&&(identical(other.city, _this.city) || other.city == _this.city)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.workingHours, _this.workingHours) || other.workingHours == _this.workingHours)&&(identical(other.currency, _this.currency) || other.currency == _this.currency)&&const DeepCollectionEquality().equals(other.delivery, _this.delivery)&&const DeepCollectionEquality().equals(other.payment, _this.payment)&&(identical(other.returns, _this.returns) || other.returns == _this.returns)&&(identical(other.warranty, _this.warranty) || other.warranty == _this.warranty)&&(identical(other.testDrive, _this.testDrive) || other.testDrive == _this.testDrive)&&(identical(other.disclaimer, _this.disclaimer) || other.disclaimer == _this.disclaimer));
}


@override
int get hashCode {
  final _this = this as Shop;
  return Object.hash(runtimeType,_this.name,_this.tagline,_this.city,_this.address,_this.phone,_this.workingHours,_this.currency,const DeepCollectionEquality().hash(_this.delivery),const DeepCollectionEquality().hash(_this.payment),_this.returns,_this.warranty,_this.testDrive,_this.disclaimer);
}

@override
String toString() {
  final _this = this as Shop;
  return 'Shop(name: ${_this.name}, tagline: ${_this.tagline}, city: ${_this.city}, address: ${_this.address}, phone: ${_this.phone}, workingHours: ${_this.workingHours}, currency: ${_this.currency}, delivery: ${_this.delivery}, payment: ${_this.payment}, returns: ${_this.returns}, warranty: ${_this.warranty}, testDrive: ${_this.testDrive}, disclaimer: ${_this.disclaimer})';
}


}

/// @nodoc
abstract mixin class $ShopCopyWith<$Res>  {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) _then) = _$ShopCopyWithImpl;
@useResult
$Res call({
 String name, String tagline, String city, String address, String phone, String workingHours, String currency, List<DeliveryOption> delivery, List<String> payment, String returns, String warranty, String testDrive, String disclaimer
});




}
/// @nodoc
class _$ShopCopyWithImpl<$Res>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._self, this._then);

  final Shop _self;
  final $Res Function(Shop) _then;

/// Create a copy of Shop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? tagline = null,Object? city = null,Object? address = null,Object? phone = null,Object? workingHours = null,Object? currency = null,Object? delivery = null,Object? payment = null,Object? returns = null,Object? warranty = null,Object? testDrive = null,Object? disclaimer = null,}) {
  return _then(Shop(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self.delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>,payment: null == payment ? _self.payment : payment // ignore: cast_nullable_to_non_nullable
as List<String>,returns: null == returns ? _self.returns : returns // ignore: cast_nullable_to_non_nullable
as String,warranty: null == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String,testDrive: null == testDrive ? _self.testDrive : testDrive // ignore: cast_nullable_to_non_nullable
as String,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Shop].
extension ShopPatterns on Shop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shop value)  $default,){
final _that = this;
switch (_that) {
case _Shop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shop value)?  $default,){
final _that = this;
switch (_that) {
case _Shop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String tagline,  String city,  String address,  String phone,  String workingHours,  String currency,  List<DeliveryOption> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shop() when $default != null:
return $default(_that.name,_that.tagline,_that.city,_that.address,_that.phone,_that.workingHours,_that.currency,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String tagline,  String city,  String address,  String phone,  String workingHours,  String currency,  List<DeliveryOption> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)  $default,) {final _that = this;
switch (_that) {
case _Shop():
return $default(_that.name,_that.tagline,_that.city,_that.address,_that.phone,_that.workingHours,_that.currency,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String tagline,  String city,  String address,  String phone,  String workingHours,  String currency,  List<DeliveryOption> delivery,  List<String> payment,  String returns,  String warranty,  String testDrive,  String disclaimer)?  $default,) {final _that = this;
switch (_that) {
case _Shop() when $default != null:
return $default(_that.name,_that.tagline,_that.city,_that.address,_that.phone,_that.workingHours,_that.currency,_that.delivery,_that.payment,_that.returns,_that.warranty,_that.testDrive,_that.disclaimer);case _:
  return null;

}
}

}

/// @nodoc


class _Shop implements Shop {
  const _Shop({required this.name, required this.tagline, required this.city, required this.address, required this.phone, required this.workingHours, required this.currency, required  List<DeliveryOption> delivery, required  List<String> payment, required this.returns, required this.warranty, required this.testDrive, required this.disclaimer}): _delivery = delivery,_payment = payment;
  

@override final  String name;
@override final  String tagline;
@override final  String city;
@override final  String address;
@override final  String phone;
@override final  String workingHours;
@override final  String currency;
 final  List<DeliveryOption> _delivery;
@override List<DeliveryOption> get delivery {
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

/// Create a copy of Shop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopCopyWith<_Shop> get copyWith => __$ShopCopyWithImpl<_Shop>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shop&&(identical(other.name, name) || other.name == name)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.delivery, _delivery)&&const DeepCollectionEquality().equals(other.payment, _payment)&&(identical(other.returns, returns) || other.returns == returns)&&(identical(other.warranty, warranty) || other.warranty == warranty)&&(identical(other.testDrive, testDrive) || other.testDrive == testDrive)&&(identical(other.disclaimer, disclaimer) || other.disclaimer == disclaimer));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,tagline,city,address,phone,workingHours,currency,const DeepCollectionEquality().hash(_delivery),const DeepCollectionEquality().hash(_payment),returns,warranty,testDrive,disclaimer);
}

@override
String toString() {
    return 'Shop(name: $name, tagline: $tagline, city: $city, address: $address, phone: $phone, workingHours: $workingHours, currency: $currency, delivery: $delivery, payment: $payment, returns: $returns, warranty: $warranty, testDrive: $testDrive, disclaimer: $disclaimer)';
}


}

/// @nodoc
abstract mixin class _$ShopCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$ShopCopyWith(_Shop value, $Res Function(_Shop) _then) = __$ShopCopyWithImpl;
@override @useResult
$Res call({
 String name, String tagline, String city, String address, String phone, String workingHours, String currency, List<DeliveryOption> delivery, List<String> payment, String returns, String warranty, String testDrive, String disclaimer
});




}
/// @nodoc
class __$ShopCopyWithImpl<$Res>
    implements _$ShopCopyWith<$Res> {
  __$ShopCopyWithImpl(this._self, this._then);

  final _Shop _self;
  final $Res Function(_Shop) _then;

/// Create a copy of Shop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? tagline = null,Object? city = null,Object? address = null,Object? phone = null,Object? workingHours = null,Object? currency = null,Object? delivery = null,Object? payment = null,Object? returns = null,Object? warranty = null,Object? testDrive = null,Object? disclaimer = null,}) {
  return _then(_Shop(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,tagline: null == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,workingHours: null == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,delivery: null == delivery ? _self._delivery : delivery // ignore: cast_nullable_to_non_nullable
as List<DeliveryOption>,payment: null == payment ? _self._payment : payment // ignore: cast_nullable_to_non_nullable
as List<String>,returns: null == returns ? _self.returns : returns // ignore: cast_nullable_to_non_nullable
as String,warranty: null == warranty ? _self.warranty : warranty // ignore: cast_nullable_to_non_nullable
as String,testDrive: null == testDrive ? _self.testDrive : testDrive // ignore: cast_nullable_to_non_nullable
as String,disclaimer: null == disclaimer ? _self.disclaimer : disclaimer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
