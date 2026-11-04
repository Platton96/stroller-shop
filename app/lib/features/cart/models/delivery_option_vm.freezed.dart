// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_option_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeliveryOptionVM {

 String get method; String get title; String get eta; int? get freeFromByn; int get costByn; bool get isSelected;
/// Create a copy of DeliveryOptionVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryOptionVMCopyWith<DeliveryOptionVM> get copyWith => _$DeliveryOptionVMCopyWithImpl<DeliveryOptionVM>(this as DeliveryOptionVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DeliveryOptionVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryOptionVM&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.eta, _this.eta) || other.eta == _this.eta)&&(identical(other.freeFromByn, _this.freeFromByn) || other.freeFromByn == _this.freeFromByn)&&(identical(other.costByn, _this.costByn) || other.costByn == _this.costByn)&&(identical(other.isSelected, _this.isSelected) || other.isSelected == _this.isSelected));
}


@override
int get hashCode {
  final _this = this as DeliveryOptionVM;
  return Object.hash(runtimeType,_this.method,_this.title,_this.eta,_this.freeFromByn,_this.costByn,_this.isSelected);
}

@override
String toString() {
  final _this = this as DeliveryOptionVM;
  return 'DeliveryOptionVM(method: ${_this.method}, title: ${_this.title}, eta: ${_this.eta}, freeFromByn: ${_this.freeFromByn}, costByn: ${_this.costByn}, isSelected: ${_this.isSelected})';
}


}

/// @nodoc
abstract mixin class $DeliveryOptionVMCopyWith<$Res>  {
  factory $DeliveryOptionVMCopyWith(DeliveryOptionVM value, $Res Function(DeliveryOptionVM) _then) = _$DeliveryOptionVMCopyWithImpl;
@useResult
$Res call({
 String method, String title, String eta, int? freeFromByn, int costByn, bool isSelected
});




}
/// @nodoc
class _$DeliveryOptionVMCopyWithImpl<$Res>
    implements $DeliveryOptionVMCopyWith<$Res> {
  _$DeliveryOptionVMCopyWithImpl(this._self, this._then);

  final DeliveryOptionVM _self;
  final $Res Function(DeliveryOptionVM) _then;

/// Create a copy of DeliveryOptionVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? title = null,Object? eta = null,Object? freeFromByn = freezed,Object? costByn = null,Object? isSelected = null,}) {
  return _then(DeliveryOptionVM(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,costByn: null == costByn ? _self.costByn : costByn // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryOptionVM].
extension DeliveryOptionVMPatterns on DeliveryOptionVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryOptionVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryOptionVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryOptionVM value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryOptionVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryOptionVM value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryOptionVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String method,  String title,  String eta,  int? freeFromByn,  int costByn,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryOptionVM() when $default != null:
return $default(_that.method,_that.title,_that.eta,_that.freeFromByn,_that.costByn,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String method,  String title,  String eta,  int? freeFromByn,  int costByn,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _DeliveryOptionVM():
return $default(_that.method,_that.title,_that.eta,_that.freeFromByn,_that.costByn,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String method,  String title,  String eta,  int? freeFromByn,  int costByn,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryOptionVM() when $default != null:
return $default(_that.method,_that.title,_that.eta,_that.freeFromByn,_that.costByn,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryOptionVM implements DeliveryOptionVM {
  const _DeliveryOptionVM({required this.method, required this.title, required this.eta, required this.freeFromByn, required this.costByn, required this.isSelected});
  

@override final  String method;
@override final  String title;
@override final  String eta;
@override final  int? freeFromByn;
@override final  int costByn;
@override final  bool isSelected;

/// Create a copy of DeliveryOptionVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryOptionVMCopyWith<_DeliveryOptionVM> get copyWith => __$DeliveryOptionVMCopyWithImpl<_DeliveryOptionVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryOptionVM&&(identical(other.method, method) || other.method == method)&&(identical(other.title, title) || other.title == title)&&(identical(other.eta, eta) || other.eta == eta)&&(identical(other.freeFromByn, freeFromByn) || other.freeFromByn == freeFromByn)&&(identical(other.costByn, costByn) || other.costByn == costByn)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode {
    return Object.hash(runtimeType,method,title,eta,freeFromByn,costByn,isSelected);
}

@override
String toString() {
    return 'DeliveryOptionVM(method: $method, title: $title, eta: $eta, freeFromByn: $freeFromByn, costByn: $costByn, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$DeliveryOptionVMCopyWith<$Res> implements $DeliveryOptionVMCopyWith<$Res> {
  factory _$DeliveryOptionVMCopyWith(_DeliveryOptionVM value, $Res Function(_DeliveryOptionVM) _then) = __$DeliveryOptionVMCopyWithImpl;
@override @useResult
$Res call({
 String method, String title, String eta, int? freeFromByn, int costByn, bool isSelected
});




}
/// @nodoc
class __$DeliveryOptionVMCopyWithImpl<$Res>
    implements _$DeliveryOptionVMCopyWith<$Res> {
  __$DeliveryOptionVMCopyWithImpl(this._self, this._then);

  final _DeliveryOptionVM _self;
  final $Res Function(_DeliveryOptionVM) _then;

/// Create a copy of DeliveryOptionVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? title = null,Object? eta = null,Object? freeFromByn = freezed,Object? costByn = null,Object? isSelected = null,}) {
  return _then(_DeliveryOptionVM(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,costByn: null == costByn ? _self.costByn : costByn // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
