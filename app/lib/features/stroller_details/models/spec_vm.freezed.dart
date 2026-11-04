// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spec_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecVM {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecVM);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SpecVM()';
}


}

/// @nodoc
class $SpecVMCopyWith<$Res>  {
$SpecVMCopyWith(SpecVM _, $Res Function(SpecVM) __);
}


/// Adds pattern-matching-related methods to [SpecVM].
extension SpecVMPatterns on SpecVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WeightSpecVM value)?  weight,TResult Function( AgeSpecVM value)?  age,TResult Function( MaxLoadSpecVM value)?  maxLoad,TResult Function( WheelsSpecVM value)?  wheels,TResult Function( SuspensionSpecVM value)?  allWheelSuspension,TResult Function( SeatSpecVM value)?  seat,TResult Function( FoldedSpecVM value)?  folded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WeightSpecVM() when weight != null:
return weight(_that);case AgeSpecVM() when age != null:
return age(_that);case MaxLoadSpecVM() when maxLoad != null:
return maxLoad(_that);case WheelsSpecVM() when wheels != null:
return wheels(_that);case SuspensionSpecVM() when allWheelSuspension != null:
return allWheelSuspension(_that);case SeatSpecVM() when seat != null:
return seat(_that);case FoldedSpecVM() when folded != null:
return folded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WeightSpecVM value)  weight,required TResult Function( AgeSpecVM value)  age,required TResult Function( MaxLoadSpecVM value)  maxLoad,required TResult Function( WheelsSpecVM value)  wheels,required TResult Function( SuspensionSpecVM value)  allWheelSuspension,required TResult Function( SeatSpecVM value)  seat,required TResult Function( FoldedSpecVM value)  folded,}){
final _that = this;
switch (_that) {
case WeightSpecVM():
return weight(_that);case AgeSpecVM():
return age(_that);case MaxLoadSpecVM():
return maxLoad(_that);case WheelsSpecVM():
return wheels(_that);case SuspensionSpecVM():
return allWheelSuspension(_that);case SeatSpecVM():
return seat(_that);case FoldedSpecVM():
return folded(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WeightSpecVM value)?  weight,TResult? Function( AgeSpecVM value)?  age,TResult? Function( MaxLoadSpecVM value)?  maxLoad,TResult? Function( WheelsSpecVM value)?  wheels,TResult? Function( SuspensionSpecVM value)?  allWheelSuspension,TResult? Function( SeatSpecVM value)?  seat,TResult? Function( FoldedSpecVM value)?  folded,}){
final _that = this;
switch (_that) {
case WeightSpecVM() when weight != null:
return weight(_that);case AgeSpecVM() when age != null:
return age(_that);case MaxLoadSpecVM() when maxLoad != null:
return maxLoad(_that);case WheelsSpecVM() when wheels != null:
return wheels(_that);case SuspensionSpecVM() when allWheelSuspension != null:
return allWheelSuspension(_that);case SeatSpecVM() when seat != null:
return seat(_that);case FoldedSpecVM() when folded != null:
return folded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double kg)?  weight,TResult Function( int fromMonths,  int? toMonths)?  age,TResult Function( double kg)?  maxLoad,TResult Function( WheelsKind kind,  String rawValue)?  wheels,TResult Function()?  allWheelSuspension,TResult Function( bool isReversible)?  seat,TResult Function( double lengthCm,  double widthCm,  double heightCm)?  folded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WeightSpecVM() when weight != null:
return weight(_that.kg);case AgeSpecVM() when age != null:
return age(_that.fromMonths,_that.toMonths);case MaxLoadSpecVM() when maxLoad != null:
return maxLoad(_that.kg);case WheelsSpecVM() when wheels != null:
return wheels(_that.kind,_that.rawValue);case SuspensionSpecVM() when allWheelSuspension != null:
return allWheelSuspension();case SeatSpecVM() when seat != null:
return seat(_that.isReversible);case FoldedSpecVM() when folded != null:
return folded(_that.lengthCm,_that.widthCm,_that.heightCm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double kg)  weight,required TResult Function( int fromMonths,  int? toMonths)  age,required TResult Function( double kg)  maxLoad,required TResult Function( WheelsKind kind,  String rawValue)  wheels,required TResult Function()  allWheelSuspension,required TResult Function( bool isReversible)  seat,required TResult Function( double lengthCm,  double widthCm,  double heightCm)  folded,}) {final _that = this;
switch (_that) {
case WeightSpecVM():
return weight(_that.kg);case AgeSpecVM():
return age(_that.fromMonths,_that.toMonths);case MaxLoadSpecVM():
return maxLoad(_that.kg);case WheelsSpecVM():
return wheels(_that.kind,_that.rawValue);case SuspensionSpecVM():
return allWheelSuspension();case SeatSpecVM():
return seat(_that.isReversible);case FoldedSpecVM():
return folded(_that.lengthCm,_that.widthCm,_that.heightCm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double kg)?  weight,TResult? Function( int fromMonths,  int? toMonths)?  age,TResult? Function( double kg)?  maxLoad,TResult? Function( WheelsKind kind,  String rawValue)?  wheels,TResult? Function()?  allWheelSuspension,TResult? Function( bool isReversible)?  seat,TResult? Function( double lengthCm,  double widthCm,  double heightCm)?  folded,}) {final _that = this;
switch (_that) {
case WeightSpecVM() when weight != null:
return weight(_that.kg);case AgeSpecVM() when age != null:
return age(_that.fromMonths,_that.toMonths);case MaxLoadSpecVM() when maxLoad != null:
return maxLoad(_that.kg);case WheelsSpecVM() when wheels != null:
return wheels(_that.kind,_that.rawValue);case SuspensionSpecVM() when allWheelSuspension != null:
return allWheelSuspension();case SeatSpecVM() when seat != null:
return seat(_that.isReversible);case FoldedSpecVM() when folded != null:
return folded(_that.lengthCm,_that.widthCm,_that.heightCm);case _:
  return null;

}
}

}

/// @nodoc


class WeightSpecVM implements SpecVM {
  const WeightSpecVM({required this.kg});
  

 final  double kg;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeightSpecVMCopyWith<WeightSpecVM> get copyWith => _$WeightSpecVMCopyWithImpl<WeightSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WeightSpecVM&&(identical(other.kg, kg) || other.kg == kg));
}


@override
int get hashCode {
    return Object.hash(runtimeType,kg);
}

@override
String toString() {
    return 'SpecVM.weight(kg: $kg)';
}


}

/// @nodoc
abstract mixin class $WeightSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $WeightSpecVMCopyWith(WeightSpecVM value, $Res Function(WeightSpecVM) _then) = _$WeightSpecVMCopyWithImpl;
@useResult
$Res call({
 double kg
});




}
/// @nodoc
class _$WeightSpecVMCopyWithImpl<$Res>
    implements $WeightSpecVMCopyWith<$Res> {
  _$WeightSpecVMCopyWithImpl(this._self, this._then);

  final WeightSpecVM _self;
  final $Res Function(WeightSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kg = null,}) {
  return _then(WeightSpecVM(
kg: null == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class AgeSpecVM implements SpecVM {
  const AgeSpecVM({required this.fromMonths, required this.toMonths});
  

 final  int fromMonths;
 final  int? toMonths;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AgeSpecVMCopyWith<AgeSpecVM> get copyWith => _$AgeSpecVMCopyWithImpl<AgeSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AgeSpecVM&&(identical(other.fromMonths, fromMonths) || other.fromMonths == fromMonths)&&(identical(other.toMonths, toMonths) || other.toMonths == toMonths));
}


@override
int get hashCode {
    return Object.hash(runtimeType,fromMonths,toMonths);
}

@override
String toString() {
    return 'SpecVM.age(fromMonths: $fromMonths, toMonths: $toMonths)';
}


}

/// @nodoc
abstract mixin class $AgeSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $AgeSpecVMCopyWith(AgeSpecVM value, $Res Function(AgeSpecVM) _then) = _$AgeSpecVMCopyWithImpl;
@useResult
$Res call({
 int fromMonths, int? toMonths
});




}
/// @nodoc
class _$AgeSpecVMCopyWithImpl<$Res>
    implements $AgeSpecVMCopyWith<$Res> {
  _$AgeSpecVMCopyWithImpl(this._self, this._then);

  final AgeSpecVM _self;
  final $Res Function(AgeSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fromMonths = null,Object? toMonths = freezed,}) {
  return _then(AgeSpecVM(
fromMonths: null == fromMonths ? _self.fromMonths : fromMonths // ignore: cast_nullable_to_non_nullable
as int,toMonths: freezed == toMonths ? _self.toMonths : toMonths // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class MaxLoadSpecVM implements SpecVM {
  const MaxLoadSpecVM({required this.kg});
  

 final  double kg;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxLoadSpecVMCopyWith<MaxLoadSpecVM> get copyWith => _$MaxLoadSpecVMCopyWithImpl<MaxLoadSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxLoadSpecVM&&(identical(other.kg, kg) || other.kg == kg));
}


@override
int get hashCode {
    return Object.hash(runtimeType,kg);
}

@override
String toString() {
    return 'SpecVM.maxLoad(kg: $kg)';
}


}

/// @nodoc
abstract mixin class $MaxLoadSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $MaxLoadSpecVMCopyWith(MaxLoadSpecVM value, $Res Function(MaxLoadSpecVM) _then) = _$MaxLoadSpecVMCopyWithImpl;
@useResult
$Res call({
 double kg
});




}
/// @nodoc
class _$MaxLoadSpecVMCopyWithImpl<$Res>
    implements $MaxLoadSpecVMCopyWith<$Res> {
  _$MaxLoadSpecVMCopyWithImpl(this._self, this._then);

  final MaxLoadSpecVM _self;
  final $Res Function(MaxLoadSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kg = null,}) {
  return _then(MaxLoadSpecVM(
kg: null == kg ? _self.kg : kg // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class WheelsSpecVM implements SpecVM {
  const WheelsSpecVM({required this.kind, required this.rawValue});
  

 final  WheelsKind kind;
 final  String rawValue;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WheelsSpecVMCopyWith<WheelsSpecVM> get copyWith => _$WheelsSpecVMCopyWithImpl<WheelsSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is WheelsSpecVM&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.rawValue, rawValue) || other.rawValue == rawValue));
}


@override
int get hashCode {
    return Object.hash(runtimeType,kind,rawValue);
}

@override
String toString() {
    return 'SpecVM.wheels(kind: $kind, rawValue: $rawValue)';
}


}

/// @nodoc
abstract mixin class $WheelsSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $WheelsSpecVMCopyWith(WheelsSpecVM value, $Res Function(WheelsSpecVM) _then) = _$WheelsSpecVMCopyWithImpl;
@useResult
$Res call({
 WheelsKind kind, String rawValue
});




}
/// @nodoc
class _$WheelsSpecVMCopyWithImpl<$Res>
    implements $WheelsSpecVMCopyWith<$Res> {
  _$WheelsSpecVMCopyWithImpl(this._self, this._then);

  final WheelsSpecVM _self;
  final $Res Function(WheelsSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? kind = null,Object? rawValue = null,}) {
  return _then(WheelsSpecVM(
kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as WheelsKind,rawValue: null == rawValue ? _self.rawValue : rawValue // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuspensionSpecVM implements SpecVM {
  const SuspensionSpecVM();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SuspensionSpecVM);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'SpecVM.allWheelSuspension()';
}


}




/// @nodoc


class SeatSpecVM implements SpecVM {
  const SeatSpecVM({required this.isReversible});
  

 final  bool isReversible;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeatSpecVMCopyWith<SeatSpecVM> get copyWith => _$SeatSpecVMCopyWithImpl<SeatSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SeatSpecVM&&(identical(other.isReversible, isReversible) || other.isReversible == isReversible));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isReversible);
}

@override
String toString() {
    return 'SpecVM.seat(isReversible: $isReversible)';
}


}

/// @nodoc
abstract mixin class $SeatSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $SeatSpecVMCopyWith(SeatSpecVM value, $Res Function(SeatSpecVM) _then) = _$SeatSpecVMCopyWithImpl;
@useResult
$Res call({
 bool isReversible
});




}
/// @nodoc
class _$SeatSpecVMCopyWithImpl<$Res>
    implements $SeatSpecVMCopyWith<$Res> {
  _$SeatSpecVMCopyWithImpl(this._self, this._then);

  final SeatSpecVM _self;
  final $Res Function(SeatSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isReversible = null,}) {
  return _then(SeatSpecVM(
isReversible: null == isReversible ? _self.isReversible : isReversible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FoldedSpecVM implements SpecVM {
  const FoldedSpecVM({required this.lengthCm, required this.widthCm, required this.heightCm});
  

 final  double lengthCm;
 final  double widthCm;
 final  double heightCm;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoldedSpecVMCopyWith<FoldedSpecVM> get copyWith => _$FoldedSpecVMCopyWithImpl<FoldedSpecVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FoldedSpecVM&&(identical(other.lengthCm, lengthCm) || other.lengthCm == lengthCm)&&(identical(other.widthCm, widthCm) || other.widthCm == widthCm)&&(identical(other.heightCm, heightCm) || other.heightCm == heightCm));
}


@override
int get hashCode {
    return Object.hash(runtimeType,lengthCm,widthCm,heightCm);
}

@override
String toString() {
    return 'SpecVM.folded(lengthCm: $lengthCm, widthCm: $widthCm, heightCm: $heightCm)';
}


}

/// @nodoc
abstract mixin class $FoldedSpecVMCopyWith<$Res> implements $SpecVMCopyWith<$Res> {
  factory $FoldedSpecVMCopyWith(FoldedSpecVM value, $Res Function(FoldedSpecVM) _then) = _$FoldedSpecVMCopyWithImpl;
@useResult
$Res call({
 double lengthCm, double widthCm, double heightCm
});




}
/// @nodoc
class _$FoldedSpecVMCopyWithImpl<$Res>
    implements $FoldedSpecVMCopyWith<$Res> {
  _$FoldedSpecVMCopyWithImpl(this._self, this._then);

  final FoldedSpecVM _self;
  final $Res Function(FoldedSpecVM) _then;

/// Create a copy of SpecVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lengthCm = null,Object? widthCm = null,Object? heightCm = null,}) {
  return _then(FoldedSpecVM(
lengthCm: null == lengthCm ? _self.lengthCm : lengthCm // ignore: cast_nullable_to_non_nullable
as double,widthCm: null == widthCm ? _self.widthCm : widthCm // ignore: cast_nullable_to_non_nullable
as double,heightCm: null == heightCm ? _self.heightCm : heightCm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
