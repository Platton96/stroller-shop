// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssistantVM {

 List<ChatItemVM> get reversedItems; List<String> get suggestions; bool get isSending; int get cartCount;
/// Create a copy of AssistantVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantVMCopyWith<AssistantVM> get copyWith => _$AssistantVMCopyWithImpl<AssistantVM>(this as AssistantVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AssistantVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantVM&&const DeepCollectionEquality().equals(other.reversedItems, _this.reversedItems)&&const DeepCollectionEquality().equals(other.suggestions, _this.suggestions)&&(identical(other.isSending, _this.isSending) || other.isSending == _this.isSending)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount));
}


@override
int get hashCode {
  final _this = this as AssistantVM;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.reversedItems),const DeepCollectionEquality().hash(_this.suggestions),_this.isSending,_this.cartCount);
}

@override
String toString() {
  final _this = this as AssistantVM;
  return 'AssistantVM(reversedItems: ${_this.reversedItems}, suggestions: ${_this.suggestions}, isSending: ${_this.isSending}, cartCount: ${_this.cartCount})';
}


}

/// @nodoc
abstract mixin class $AssistantVMCopyWith<$Res>  {
  factory $AssistantVMCopyWith(AssistantVM value, $Res Function(AssistantVM) _then) = _$AssistantVMCopyWithImpl;
@useResult
$Res call({
 List<ChatItemVM> reversedItems, List<String> suggestions, bool isSending, int cartCount
});




}
/// @nodoc
class _$AssistantVMCopyWithImpl<$Res>
    implements $AssistantVMCopyWith<$Res> {
  _$AssistantVMCopyWithImpl(this._self, this._then);

  final AssistantVM _self;
  final $Res Function(AssistantVM) _then;

/// Create a copy of AssistantVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reversedItems = null,Object? suggestions = null,Object? isSending = null,Object? cartCount = null,}) {
  return _then(AssistantVM(
reversedItems: null == reversedItems ? _self.reversedItems : reversedItems // ignore: cast_nullable_to_non_nullable
as List<ChatItemVM>,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AssistantVM].
extension AssistantVMPatterns on AssistantVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssistantVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssistantVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssistantVM value)  $default,){
final _that = this;
switch (_that) {
case _AssistantVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssistantVM value)?  $default,){
final _that = this;
switch (_that) {
case _AssistantVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatItemVM> reversedItems,  List<String> suggestions,  bool isSending,  int cartCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssistantVM() when $default != null:
return $default(_that.reversedItems,_that.suggestions,_that.isSending,_that.cartCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatItemVM> reversedItems,  List<String> suggestions,  bool isSending,  int cartCount)  $default,) {final _that = this;
switch (_that) {
case _AssistantVM():
return $default(_that.reversedItems,_that.suggestions,_that.isSending,_that.cartCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatItemVM> reversedItems,  List<String> suggestions,  bool isSending,  int cartCount)?  $default,) {final _that = this;
switch (_that) {
case _AssistantVM() when $default != null:
return $default(_that.reversedItems,_that.suggestions,_that.isSending,_that.cartCount);case _:
  return null;

}
}

}

/// @nodoc


class _AssistantVM implements AssistantVM {
  const _AssistantVM({required  List<ChatItemVM> reversedItems, required  List<String> suggestions, required this.isSending, required this.cartCount}): _reversedItems = reversedItems,_suggestions = suggestions;
  

 final  List<ChatItemVM> _reversedItems;
@override List<ChatItemVM> get reversedItems {
  if (_reversedItems is EqualUnmodifiableListView) return _reversedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reversedItems);
}

 final  List<String> _suggestions;
@override List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  bool isSending;
@override final  int cartCount;

/// Create a copy of AssistantVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssistantVMCopyWith<_AssistantVM> get copyWith => __$AssistantVMCopyWithImpl<_AssistantVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantVM&&const DeepCollectionEquality().equals(other.reversedItems, _reversedItems)&&const DeepCollectionEquality().equals(other.suggestions, _suggestions)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_reversedItems),const DeepCollectionEquality().hash(_suggestions),isSending,cartCount);
}

@override
String toString() {
    return 'AssistantVM(reversedItems: $reversedItems, suggestions: $suggestions, isSending: $isSending, cartCount: $cartCount)';
}


}

/// @nodoc
abstract mixin class _$AssistantVMCopyWith<$Res> implements $AssistantVMCopyWith<$Res> {
  factory _$AssistantVMCopyWith(_AssistantVM value, $Res Function(_AssistantVM) _then) = __$AssistantVMCopyWithImpl;
@override @useResult
$Res call({
 List<ChatItemVM> reversedItems, List<String> suggestions, bool isSending, int cartCount
});




}
/// @nodoc
class __$AssistantVMCopyWithImpl<$Res>
    implements _$AssistantVMCopyWith<$Res> {
  __$AssistantVMCopyWithImpl(this._self, this._then);

  final _AssistantVM _self;
  final $Res Function(_AssistantVM) _then;

/// Create a copy of AssistantVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reversedItems = null,Object? suggestions = null,Object? isSending = null,Object? cartCount = null,}) {
  return _then(_AssistantVM(
reversedItems: null == reversedItems ? _self._reversedItems : reversedItems // ignore: cast_nullable_to_non_nullable
as List<ChatItemVM>,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
