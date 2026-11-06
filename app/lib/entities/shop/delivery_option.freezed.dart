// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeliveryOption {

 String get method; String get title; int get priceByn; String get eta; int? get freeFromByn;
/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryOptionCopyWith<DeliveryOption> get copyWith => _$DeliveryOptionCopyWithImpl<DeliveryOption>(this as DeliveryOption, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DeliveryOption;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryOption&&(identical(other.method, _this.method) || other.method == _this.method)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.priceByn, _this.priceByn) || other.priceByn == _this.priceByn)&&(identical(other.eta, _this.eta) || other.eta == _this.eta)&&(identical(other.freeFromByn, _this.freeFromByn) || other.freeFromByn == _this.freeFromByn));
}


@override
int get hashCode {
  final _this = this as DeliveryOption;
  return Object.hash(runtimeType,_this.method,_this.title,_this.priceByn,_this.eta,_this.freeFromByn);
}

@override
String toString() {
  final _this = this as DeliveryOption;
  return 'DeliveryOption(method: ${_this.method}, title: ${_this.title}, priceByn: ${_this.priceByn}, eta: ${_this.eta}, freeFromByn: ${_this.freeFromByn})';
}


}

/// @nodoc
abstract mixin class $DeliveryOptionCopyWith<$Res>  {
  factory $DeliveryOptionCopyWith(DeliveryOption value, $Res Function(DeliveryOption) _then) = _$DeliveryOptionCopyWithImpl;
@useResult
$Res call({
 String method, String title, int priceByn, String eta, int? freeFromByn
});




}
/// @nodoc
class _$DeliveryOptionCopyWithImpl<$Res>
    implements $DeliveryOptionCopyWith<$Res> {
  _$DeliveryOptionCopyWithImpl(this._self, this._then);

  final DeliveryOption _self;
  final $Res Function(DeliveryOption) _then;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? title = null,Object? priceByn = null,Object? eta = null,Object? freeFromByn = freezed,}) {
  return _then(DeliveryOption(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryOption].
extension DeliveryOptionPatterns on DeliveryOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryOption value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryOption value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String method,  String title,  int priceByn,  String eta,  int? freeFromByn)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryOption() when $default != null:
return $default(_that.method,_that.title,_that.priceByn,_that.eta,_that.freeFromByn);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String method,  String title,  int priceByn,  String eta,  int? freeFromByn)  $default,) {final _that = this;
switch (_that) {
case _DeliveryOption():
return $default(_that.method,_that.title,_that.priceByn,_that.eta,_that.freeFromByn);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String method,  String title,  int priceByn,  String eta,  int? freeFromByn)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryOption() when $default != null:
return $default(_that.method,_that.title,_that.priceByn,_that.eta,_that.freeFromByn);case _:
  return null;

}
}

}

/// @nodoc


class _DeliveryOption implements DeliveryOption {
  const _DeliveryOption({required this.method, required this.title, required this.priceByn, required this.eta, required this.freeFromByn});
  

@override final  String method;
@override final  String title;
@override final  int priceByn;
@override final  String eta;
@override final  int? freeFromByn;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryOptionCopyWith<_DeliveryOption> get copyWith => __$DeliveryOptionCopyWithImpl<_DeliveryOption>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryOption&&(identical(other.method, method) || other.method == method)&&(identical(other.title, title) || other.title == title)&&(identical(other.priceByn, priceByn) || other.priceByn == priceByn)&&(identical(other.eta, eta) || other.eta == eta)&&(identical(other.freeFromByn, freeFromByn) || other.freeFromByn == freeFromByn));
}


@override
int get hashCode {
    return Object.hash(runtimeType,method,title,priceByn,eta,freeFromByn);
}

@override
String toString() {
    return 'DeliveryOption(method: $method, title: $title, priceByn: $priceByn, eta: $eta, freeFromByn: $freeFromByn)';
}


}

/// @nodoc
abstract mixin class _$DeliveryOptionCopyWith<$Res> implements $DeliveryOptionCopyWith<$Res> {
  factory _$DeliveryOptionCopyWith(_DeliveryOption value, $Res Function(_DeliveryOption) _then) = __$DeliveryOptionCopyWithImpl;
@override @useResult
$Res call({
 String method, String title, int priceByn, String eta, int? freeFromByn
});




}
/// @nodoc
class __$DeliveryOptionCopyWithImpl<$Res>
    implements _$DeliveryOptionCopyWith<$Res> {
  __$DeliveryOptionCopyWithImpl(this._self, this._then);

  final _DeliveryOption _self;
  final $Res Function(_DeliveryOption) _then;

/// Create a copy of DeliveryOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? title = null,Object? priceByn = null,Object? eta = null,Object? freeFromByn = freezed,}) {
  return _then(_DeliveryOption(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,eta: null == eta ? _self.eta : eta // ignore: cast_nullable_to_non_nullable
as String,freeFromByn: freezed == freeFromByn ? _self.freeFromByn : freeFromByn // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
