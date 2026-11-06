// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroller_card_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StrollerCardVM {

 String get id; String get brand; String get model; int get priceByn; bool get isPriceApproximate; double? get weightKg; int get ageFromMonths; bool get isCabinLuggage; String get imageUrl;
/// Create a copy of StrollerCardVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerCardVMCopyWith<StrollerCardVM> get copyWith => _$StrollerCardVMCopyWithImpl<StrollerCardVM>(this as StrollerCardVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StrollerCardVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerCardVM&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.priceByn, _this.priceByn) || other.priceByn == _this.priceByn)&&(identical(other.isPriceApproximate, _this.isPriceApproximate) || other.isPriceApproximate == _this.isPriceApproximate)&&(identical(other.weightKg, _this.weightKg) || other.weightKg == _this.weightKg)&&(identical(other.ageFromMonths, _this.ageFromMonths) || other.ageFromMonths == _this.ageFromMonths)&&(identical(other.isCabinLuggage, _this.isCabinLuggage) || other.isCabinLuggage == _this.isCabinLuggage)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}


@override
int get hashCode {
  final _this = this as StrollerCardVM;
  return Object.hash(runtimeType,_this.id,_this.brand,_this.model,_this.priceByn,_this.isPriceApproximate,_this.weightKg,_this.ageFromMonths,_this.isCabinLuggage,_this.imageUrl);
}

@override
String toString() {
  final _this = this as StrollerCardVM;
  return 'StrollerCardVM(id: ${_this.id}, brand: ${_this.brand}, model: ${_this.model}, priceByn: ${_this.priceByn}, isPriceApproximate: ${_this.isPriceApproximate}, weightKg: ${_this.weightKg}, ageFromMonths: ${_this.ageFromMonths}, isCabinLuggage: ${_this.isCabinLuggage}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $StrollerCardVMCopyWith<$Res>  {
  factory $StrollerCardVMCopyWith(StrollerCardVM value, $Res Function(StrollerCardVM) _then) = _$StrollerCardVMCopyWithImpl;
@useResult
$Res call({
 String id, String brand, String model, int priceByn, bool isPriceApproximate, double? weightKg, int ageFromMonths, bool isCabinLuggage, String imageUrl
});




}
/// @nodoc
class _$StrollerCardVMCopyWithImpl<$Res>
    implements $StrollerCardVMCopyWith<$Res> {
  _$StrollerCardVMCopyWithImpl(this._self, this._then);

  final StrollerCardVM _self;
  final $Res Function(StrollerCardVM) _then;

/// Create a copy of StrollerCardVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? brand = null,Object? model = null,Object? priceByn = null,Object? isPriceApproximate = null,Object? weightKg = freezed,Object? ageFromMonths = null,Object? isCabinLuggage = null,Object? imageUrl = null,}) {
  return _then(StrollerCardVM(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,isPriceApproximate: null == isPriceApproximate ? _self.isPriceApproximate : isPriceApproximate // ignore: cast_nullable_to_non_nullable
as bool,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,ageFromMonths: null == ageFromMonths ? _self.ageFromMonths : ageFromMonths // ignore: cast_nullable_to_non_nullable
as int,isCabinLuggage: null == isCabinLuggage ? _self.isCabinLuggage : isCabinLuggage // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StrollerCardVM].
extension StrollerCardVMPatterns on StrollerCardVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StrollerCardVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StrollerCardVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StrollerCardVM value)  $default,){
final _that = this;
switch (_that) {
case _StrollerCardVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StrollerCardVM value)?  $default,){
final _that = this;
switch (_that) {
case _StrollerCardVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String brand,  String model,  int priceByn,  bool isPriceApproximate,  double? weightKg,  int ageFromMonths,  bool isCabinLuggage,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StrollerCardVM() when $default != null:
return $default(_that.id,_that.brand,_that.model,_that.priceByn,_that.isPriceApproximate,_that.weightKg,_that.ageFromMonths,_that.isCabinLuggage,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String brand,  String model,  int priceByn,  bool isPriceApproximate,  double? weightKg,  int ageFromMonths,  bool isCabinLuggage,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _StrollerCardVM():
return $default(_that.id,_that.brand,_that.model,_that.priceByn,_that.isPriceApproximate,_that.weightKg,_that.ageFromMonths,_that.isCabinLuggage,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String brand,  String model,  int priceByn,  bool isPriceApproximate,  double? weightKg,  int ageFromMonths,  bool isCabinLuggage,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _StrollerCardVM() when $default != null:
return $default(_that.id,_that.brand,_that.model,_that.priceByn,_that.isPriceApproximate,_that.weightKg,_that.ageFromMonths,_that.isCabinLuggage,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _StrollerCardVM implements StrollerCardVM {
  const _StrollerCardVM({required this.id, required this.brand, required this.model, required this.priceByn, required this.isPriceApproximate, required this.weightKg, required this.ageFromMonths, required this.isCabinLuggage, required this.imageUrl});
  

@override final  String id;
@override final  String brand;
@override final  String model;
@override final  int priceByn;
@override final  bool isPriceApproximate;
@override final  double? weightKg;
@override final  int ageFromMonths;
@override final  bool isCabinLuggage;
@override final  String imageUrl;

/// Create a copy of StrollerCardVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollerCardVMCopyWith<_StrollerCardVM> get copyWith => __$StrollerCardVMCopyWithImpl<_StrollerCardVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollerCardVM&&(identical(other.id, id) || other.id == id)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.priceByn, priceByn) || other.priceByn == priceByn)&&(identical(other.isPriceApproximate, isPriceApproximate) || other.isPriceApproximate == isPriceApproximate)&&(identical(other.weightKg, weightKg) || other.weightKg == weightKg)&&(identical(other.ageFromMonths, ageFromMonths) || other.ageFromMonths == ageFromMonths)&&(identical(other.isCabinLuggage, isCabinLuggage) || other.isCabinLuggage == isCabinLuggage)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,brand,model,priceByn,isPriceApproximate,weightKg,ageFromMonths,isCabinLuggage,imageUrl);
}

@override
String toString() {
    return 'StrollerCardVM(id: $id, brand: $brand, model: $model, priceByn: $priceByn, isPriceApproximate: $isPriceApproximate, weightKg: $weightKg, ageFromMonths: $ageFromMonths, isCabinLuggage: $isCabinLuggage, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$StrollerCardVMCopyWith<$Res> implements $StrollerCardVMCopyWith<$Res> {
  factory _$StrollerCardVMCopyWith(_StrollerCardVM value, $Res Function(_StrollerCardVM) _then) = __$StrollerCardVMCopyWithImpl;
@override @useResult
$Res call({
 String id, String brand, String model, int priceByn, bool isPriceApproximate, double? weightKg, int ageFromMonths, bool isCabinLuggage, String imageUrl
});




}
/// @nodoc
class __$StrollerCardVMCopyWithImpl<$Res>
    implements _$StrollerCardVMCopyWith<$Res> {
  __$StrollerCardVMCopyWithImpl(this._self, this._then);

  final _StrollerCardVM _self;
  final $Res Function(_StrollerCardVM) _then;

/// Create a copy of StrollerCardVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? brand = null,Object? model = null,Object? priceByn = null,Object? isPriceApproximate = null,Object? weightKg = freezed,Object? ageFromMonths = null,Object? isCabinLuggage = null,Object? imageUrl = null,}) {
  return _then(_StrollerCardVM(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,isPriceApproximate: null == isPriceApproximate ? _self.isPriceApproximate : isPriceApproximate // ignore: cast_nullable_to_non_nullable
as bool,weightKg: freezed == weightKg ? _self.weightKg : weightKg // ignore: cast_nullable_to_non_nullable
as double?,ageFromMonths: null == ageFromMonths ? _self.ageFromMonths : ageFromMonths // ignore: cast_nullable_to_non_nullable
as int,isCabinLuggage: null == isCabinLuggage ? _self.isCabinLuggage : isCabinLuggage // ignore: cast_nullable_to_non_nullable
as bool,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
