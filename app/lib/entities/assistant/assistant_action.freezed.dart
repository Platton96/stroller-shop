// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssistantAction {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantAction()';
}


}

/// @nodoc
class $AssistantActionCopyWith<$Res>  {
$AssistantActionCopyWith(AssistantAction _, $Res Function(AssistantAction) __);
}


/// Adds pattern-matching-related methods to [AssistantAction].
extension AssistantActionPatterns on AssistantAction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddToCartAssistantAction value)?  addToCart,TResult Function( UnknownAssistantAction value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddToCartAssistantAction() when addToCart != null:
return addToCart(_that);case UnknownAssistantAction() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddToCartAssistantAction value)  addToCart,required TResult Function( UnknownAssistantAction value)  unknown,}){
final _that = this;
switch (_that) {
case AddToCartAssistantAction():
return addToCart(_that);case UnknownAssistantAction():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddToCartAssistantAction value)?  addToCart,TResult? Function( UnknownAssistantAction value)?  unknown,}){
final _that = this;
switch (_that) {
case AddToCartAssistantAction() when addToCart != null:
return addToCart(_that);case UnknownAssistantAction() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String strollerId,  String color)?  addToCart,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddToCartAssistantAction() when addToCart != null:
return addToCart(_that.strollerId,_that.color);case UnknownAssistantAction() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String strollerId,  String color)  addToCart,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case AddToCartAssistantAction():
return addToCart(_that.strollerId,_that.color);case UnknownAssistantAction():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String strollerId,  String color)?  addToCart,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case AddToCartAssistantAction() when addToCart != null:
return addToCart(_that.strollerId,_that.color);case UnknownAssistantAction() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class AddToCartAssistantAction implements AssistantAction {
  const AddToCartAssistantAction({required this.strollerId, required this.color});
  

 final  String strollerId;
 final  String color;

/// Create a copy of AssistantAction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartAssistantActionCopyWith<AddToCartAssistantAction> get copyWith => _$AddToCartAssistantActionCopyWithImpl<AddToCartAssistantAction>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartAssistantAction&&(identical(other.strollerId, strollerId) || other.strollerId == strollerId)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode {
    return Object.hash(runtimeType,strollerId,color);
}

@override
String toString() {
    return 'AssistantAction.addToCart(strollerId: $strollerId, color: $color)';
}


}

/// @nodoc
abstract mixin class $AddToCartAssistantActionCopyWith<$Res> implements $AssistantActionCopyWith<$Res> {
  factory $AddToCartAssistantActionCopyWith(AddToCartAssistantAction value, $Res Function(AddToCartAssistantAction) _then) = _$AddToCartAssistantActionCopyWithImpl;
@useResult
$Res call({
 String strollerId, String color
});




}
/// @nodoc
class _$AddToCartAssistantActionCopyWithImpl<$Res>
    implements $AddToCartAssistantActionCopyWith<$Res> {
  _$AddToCartAssistantActionCopyWithImpl(this._self, this._then);

  final AddToCartAssistantAction _self;
  final $Res Function(AddToCartAssistantAction) _then;

/// Create a copy of AssistantAction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,Object? color = null,}) {
  return _then(AddToCartAssistantAction(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnknownAssistantAction implements AssistantAction {
  const UnknownAssistantAction();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownAssistantAction);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantAction.unknown()';
}


}




// dart format on
