// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_chip_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TypeChipVM {

 int get count; bool get isSelected;
/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeChipVMCopyWith<TypeChipVM> get copyWith => _$TypeChipVMCopyWithImpl<TypeChipVM>(this as TypeChipVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TypeChipVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeChipVM&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.isSelected, _this.isSelected) || other.isSelected == _this.isSelected));
}


@override
int get hashCode {
  final _this = this as TypeChipVM;
  return Object.hash(runtimeType,_this.count,_this.isSelected);
}

@override
String toString() {
  final _this = this as TypeChipVM;
  return 'TypeChipVM(count: ${_this.count}, isSelected: ${_this.isSelected})';
}


}

/// @nodoc
abstract mixin class $TypeChipVMCopyWith<$Res>  {
  factory $TypeChipVMCopyWith(TypeChipVM value, $Res Function(TypeChipVM) _then) = _$TypeChipVMCopyWithImpl;
@useResult
$Res call({
 int count, bool isSelected
});




}
/// @nodoc
class _$TypeChipVMCopyWithImpl<$Res>
    implements $TypeChipVMCopyWith<$Res> {
  _$TypeChipVMCopyWithImpl(this._self, this._then);

  final TypeChipVM _self;
  final $Res Function(TypeChipVM) _then;

/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeChipVM].
extension TypeChipVMPatterns on TypeChipVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AllTypesChipVM value)?  all,TResult Function( SingleTypeChipVM value)?  type,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AllTypesChipVM() when all != null:
return all(_that);case SingleTypeChipVM() when type != null:
return type(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AllTypesChipVM value)  all,required TResult Function( SingleTypeChipVM value)  type,}){
final _that = this;
switch (_that) {
case AllTypesChipVM():
return all(_that);case SingleTypeChipVM():
return type(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AllTypesChipVM value)?  all,TResult? Function( SingleTypeChipVM value)?  type,}){
final _that = this;
switch (_that) {
case AllTypesChipVM() when all != null:
return all(_that);case SingleTypeChipVM() when type != null:
return type(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int count,  bool isSelected)?  all,TResult Function( StrollerType type,  String label,  int count,  bool isSelected)?  type,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AllTypesChipVM() when all != null:
return all(_that.count,_that.isSelected);case SingleTypeChipVM() when type != null:
return type(_that.type,_that.label,_that.count,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int count,  bool isSelected)  all,required TResult Function( StrollerType type,  String label,  int count,  bool isSelected)  type,}) {final _that = this;
switch (_that) {
case AllTypesChipVM():
return all(_that.count,_that.isSelected);case SingleTypeChipVM():
return type(_that.type,_that.label,_that.count,_that.isSelected);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int count,  bool isSelected)?  all,TResult? Function( StrollerType type,  String label,  int count,  bool isSelected)?  type,}) {final _that = this;
switch (_that) {
case AllTypesChipVM() when all != null:
return all(_that.count,_that.isSelected);case SingleTypeChipVM() when type != null:
return type(_that.type,_that.label,_that.count,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class AllTypesChipVM implements TypeChipVM {
  const AllTypesChipVM({required this.count, required this.isSelected});
  

@override final  int count;
@override final  bool isSelected;

/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllTypesChipVMCopyWith<AllTypesChipVM> get copyWith => _$AllTypesChipVMCopyWithImpl<AllTypesChipVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AllTypesChipVM&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode {
    return Object.hash(runtimeType,count,isSelected);
}

@override
String toString() {
    return 'TypeChipVM.all(count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $AllTypesChipVMCopyWith<$Res> implements $TypeChipVMCopyWith<$Res> {
  factory $AllTypesChipVMCopyWith(AllTypesChipVM value, $Res Function(AllTypesChipVM) _then) = _$AllTypesChipVMCopyWithImpl;
@override @useResult
$Res call({
 int count, bool isSelected
});




}
/// @nodoc
class _$AllTypesChipVMCopyWithImpl<$Res>
    implements $AllTypesChipVMCopyWith<$Res> {
  _$AllTypesChipVMCopyWithImpl(this._self, this._then);

  final AllTypesChipVM _self;
  final $Res Function(AllTypesChipVM) _then;

/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? isSelected = null,}) {
  return _then(AllTypesChipVM(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SingleTypeChipVM implements TypeChipVM {
  const SingleTypeChipVM({required this.type, required this.label, required this.count, required this.isSelected});
  

 final  StrollerType type;
 final  String label;
@override final  int count;
@override final  bool isSelected;

/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleTypeChipVMCopyWith<SingleTypeChipVM> get copyWith => _$SingleTypeChipVMCopyWithImpl<SingleTypeChipVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleTypeChipVM&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.count, count) || other.count == count)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode {
    return Object.hash(runtimeType,type,label,count,isSelected);
}

@override
String toString() {
    return 'TypeChipVM.type(type: $type, label: $label, count: $count, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $SingleTypeChipVMCopyWith<$Res> implements $TypeChipVMCopyWith<$Res> {
  factory $SingleTypeChipVMCopyWith(SingleTypeChipVM value, $Res Function(SingleTypeChipVM) _then) = _$SingleTypeChipVMCopyWithImpl;
@override @useResult
$Res call({
 StrollerType type, String label, int count, bool isSelected
});




}
/// @nodoc
class _$SingleTypeChipVMCopyWithImpl<$Res>
    implements $SingleTypeChipVMCopyWith<$Res> {
  _$SingleTypeChipVMCopyWithImpl(this._self, this._then);

  final SingleTypeChipVM _self;
  final $Res Function(SingleTypeChipVM) _then;

/// Create a copy of TypeChipVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? label = null,Object? count = null,Object? isSelected = null,}) {
  return _then(SingleTypeChipVM(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StrollerType,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
