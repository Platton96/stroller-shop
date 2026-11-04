// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroller_details_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StrollerDetailsVM {

 String get brand; String get model; StrollerType get type; double get rating; int get priceByn; bool get isPriceApproximate; bool get isInStock; int get stockQuantity; List<String> get colors; String get selectedColor; List<SpecVM> get specs; String get description; List<String> get features; String get imageUrl;
/// Create a copy of StrollerDetailsVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerDetailsVMCopyWith<StrollerDetailsVM> get copyWith => _$StrollerDetailsVMCopyWithImpl<StrollerDetailsVM>(this as StrollerDetailsVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as StrollerDetailsVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsVM&&(identical(other.brand, _this.brand) || other.brand == _this.brand)&&(identical(other.model, _this.model) || other.model == _this.model)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.priceByn, _this.priceByn) || other.priceByn == _this.priceByn)&&(identical(other.isPriceApproximate, _this.isPriceApproximate) || other.isPriceApproximate == _this.isPriceApproximate)&&(identical(other.isInStock, _this.isInStock) || other.isInStock == _this.isInStock)&&(identical(other.stockQuantity, _this.stockQuantity) || other.stockQuantity == _this.stockQuantity)&&const DeepCollectionEquality().equals(other.colors, _this.colors)&&(identical(other.selectedColor, _this.selectedColor) || other.selectedColor == _this.selectedColor)&&const DeepCollectionEquality().equals(other.specs, _this.specs)&&(identical(other.description, _this.description) || other.description == _this.description)&&const DeepCollectionEquality().equals(other.features, _this.features)&&(identical(other.imageUrl, _this.imageUrl) || other.imageUrl == _this.imageUrl));
}


@override
int get hashCode {
  final _this = this as StrollerDetailsVM;
  return Object.hash(runtimeType,_this.brand,_this.model,_this.type,_this.rating,_this.priceByn,_this.isPriceApproximate,_this.isInStock,_this.stockQuantity,const DeepCollectionEquality().hash(_this.colors),_this.selectedColor,const DeepCollectionEquality().hash(_this.specs),_this.description,const DeepCollectionEquality().hash(_this.features),_this.imageUrl);
}

@override
String toString() {
  final _this = this as StrollerDetailsVM;
  return 'StrollerDetailsVM(brand: ${_this.brand}, model: ${_this.model}, type: ${_this.type}, rating: ${_this.rating}, priceByn: ${_this.priceByn}, isPriceApproximate: ${_this.isPriceApproximate}, isInStock: ${_this.isInStock}, stockQuantity: ${_this.stockQuantity}, colors: ${_this.colors}, selectedColor: ${_this.selectedColor}, specs: ${_this.specs}, description: ${_this.description}, features: ${_this.features}, imageUrl: ${_this.imageUrl})';
}


}

/// @nodoc
abstract mixin class $StrollerDetailsVMCopyWith<$Res>  {
  factory $StrollerDetailsVMCopyWith(StrollerDetailsVM value, $Res Function(StrollerDetailsVM) _then) = _$StrollerDetailsVMCopyWithImpl;
@useResult
$Res call({
 String brand, String model, StrollerType type, double rating, int priceByn, bool isPriceApproximate, bool isInStock, int stockQuantity, List<String> colors, String selectedColor, List<SpecVM> specs, String description, List<String> features, String imageUrl
});




}
/// @nodoc
class _$StrollerDetailsVMCopyWithImpl<$Res>
    implements $StrollerDetailsVMCopyWith<$Res> {
  _$StrollerDetailsVMCopyWithImpl(this._self, this._then);

  final StrollerDetailsVM _self;
  final $Res Function(StrollerDetailsVM) _then;

/// Create a copy of StrollerDetailsVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brand = null,Object? model = null,Object? type = null,Object? rating = null,Object? priceByn = null,Object? isPriceApproximate = null,Object? isInStock = null,Object? stockQuantity = null,Object? colors = null,Object? selectedColor = null,Object? specs = null,Object? description = null,Object? features = null,Object? imageUrl = null,}) {
  return _then(StrollerDetailsVM(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StrollerType,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,isPriceApproximate: null == isPriceApproximate ? _self.isPriceApproximate : isPriceApproximate // ignore: cast_nullable_to_non_nullable
as bool,isInStock: null == isInStock ? _self.isInStock : isInStock // ignore: cast_nullable_to_non_nullable
as bool,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,colors: null == colors ? _self.colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,selectedColor: null == selectedColor ? _self.selectedColor : selectedColor // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self.specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecVM>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StrollerDetailsVM].
extension StrollerDetailsVMPatterns on StrollerDetailsVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StrollerDetailsVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StrollerDetailsVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StrollerDetailsVM value)  $default,){
final _that = this;
switch (_that) {
case _StrollerDetailsVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StrollerDetailsVM value)?  $default,){
final _that = this;
switch (_that) {
case _StrollerDetailsVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String brand,  String model,  StrollerType type,  double rating,  int priceByn,  bool isPriceApproximate,  bool isInStock,  int stockQuantity,  List<String> colors,  String selectedColor,  List<SpecVM> specs,  String description,  List<String> features,  String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StrollerDetailsVM() when $default != null:
return $default(_that.brand,_that.model,_that.type,_that.rating,_that.priceByn,_that.isPriceApproximate,_that.isInStock,_that.stockQuantity,_that.colors,_that.selectedColor,_that.specs,_that.description,_that.features,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String brand,  String model,  StrollerType type,  double rating,  int priceByn,  bool isPriceApproximate,  bool isInStock,  int stockQuantity,  List<String> colors,  String selectedColor,  List<SpecVM> specs,  String description,  List<String> features,  String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _StrollerDetailsVM():
return $default(_that.brand,_that.model,_that.type,_that.rating,_that.priceByn,_that.isPriceApproximate,_that.isInStock,_that.stockQuantity,_that.colors,_that.selectedColor,_that.specs,_that.description,_that.features,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String brand,  String model,  StrollerType type,  double rating,  int priceByn,  bool isPriceApproximate,  bool isInStock,  int stockQuantity,  List<String> colors,  String selectedColor,  List<SpecVM> specs,  String description,  List<String> features,  String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _StrollerDetailsVM() when $default != null:
return $default(_that.brand,_that.model,_that.type,_that.rating,_that.priceByn,_that.isPriceApproximate,_that.isInStock,_that.stockQuantity,_that.colors,_that.selectedColor,_that.specs,_that.description,_that.features,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _StrollerDetailsVM implements StrollerDetailsVM {
  const _StrollerDetailsVM({required this.brand, required this.model, required this.type, required this.rating, required this.priceByn, required this.isPriceApproximate, required this.isInStock, required this.stockQuantity, required  List<String> colors, required this.selectedColor, required  List<SpecVM> specs, required this.description, required  List<String> features, required this.imageUrl}): _colors = colors,_specs = specs,_features = features;
  

@override final  String brand;
@override final  String model;
@override final  StrollerType type;
@override final  double rating;
@override final  int priceByn;
@override final  bool isPriceApproximate;
@override final  bool isInStock;
@override final  int stockQuantity;
 final  List<String> _colors;
@override List<String> get colors {
  if (_colors is EqualUnmodifiableListView) return _colors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_colors);
}

@override final  String selectedColor;
 final  List<SpecVM> _specs;
@override List<SpecVM> get specs {
  if (_specs is EqualUnmodifiableListView) return _specs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specs);
}

@override final  String description;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override final  String imageUrl;

/// Create a copy of StrollerDetailsVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollerDetailsVMCopyWith<_StrollerDetailsVM> get copyWith => __$StrollerDetailsVMCopyWithImpl<_StrollerDetailsVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollerDetailsVM&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.model, model) || other.model == model)&&(identical(other.type, type) || other.type == type)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.priceByn, priceByn) || other.priceByn == priceByn)&&(identical(other.isPriceApproximate, isPriceApproximate) || other.isPriceApproximate == isPriceApproximate)&&(identical(other.isInStock, isInStock) || other.isInStock == isInStock)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&const DeepCollectionEquality().equals(other.colors, _colors)&&(identical(other.selectedColor, selectedColor) || other.selectedColor == selectedColor)&&const DeepCollectionEquality().equals(other.specs, _specs)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.features, _features)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,brand,model,type,rating,priceByn,isPriceApproximate,isInStock,stockQuantity,const DeepCollectionEquality().hash(_colors),selectedColor,const DeepCollectionEquality().hash(_specs),description,const DeepCollectionEquality().hash(_features),imageUrl);
}

@override
String toString() {
    return 'StrollerDetailsVM(brand: $brand, model: $model, type: $type, rating: $rating, priceByn: $priceByn, isPriceApproximate: $isPriceApproximate, isInStock: $isInStock, stockQuantity: $stockQuantity, colors: $colors, selectedColor: $selectedColor, specs: $specs, description: $description, features: $features, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$StrollerDetailsVMCopyWith<$Res> implements $StrollerDetailsVMCopyWith<$Res> {
  factory _$StrollerDetailsVMCopyWith(_StrollerDetailsVM value, $Res Function(_StrollerDetailsVM) _then) = __$StrollerDetailsVMCopyWithImpl;
@override @useResult
$Res call({
 String brand, String model, StrollerType type, double rating, int priceByn, bool isPriceApproximate, bool isInStock, int stockQuantity, List<String> colors, String selectedColor, List<SpecVM> specs, String description, List<String> features, String imageUrl
});




}
/// @nodoc
class __$StrollerDetailsVMCopyWithImpl<$Res>
    implements _$StrollerDetailsVMCopyWith<$Res> {
  __$StrollerDetailsVMCopyWithImpl(this._self, this._then);

  final _StrollerDetailsVM _self;
  final $Res Function(_StrollerDetailsVM) _then;

/// Create a copy of StrollerDetailsVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brand = null,Object? model = null,Object? type = null,Object? rating = null,Object? priceByn = null,Object? isPriceApproximate = null,Object? isInStock = null,Object? stockQuantity = null,Object? colors = null,Object? selectedColor = null,Object? specs = null,Object? description = null,Object? features = null,Object? imageUrl = null,}) {
  return _then(_StrollerDetailsVM(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StrollerType,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,isPriceApproximate: null == isPriceApproximate ? _self.isPriceApproximate : isPriceApproximate // ignore: cast_nullable_to_non_nullable
as bool,isInStock: null == isInStock ? _self.isInStock : isInStock // ignore: cast_nullable_to_non_nullable
as bool,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,colors: null == colors ? _self._colors : colors // ignore: cast_nullable_to_non_nullable
as List<String>,selectedColor: null == selectedColor ? _self.selectedColor : selectedColor // ignore: cast_nullable_to_non_nullable
as String,specs: null == specs ? _self._specs : specs // ignore: cast_nullable_to_non_nullable
as List<SpecVM>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
