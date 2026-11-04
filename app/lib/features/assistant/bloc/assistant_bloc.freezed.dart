// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssistantEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantEvent()';
}


}

/// @nodoc
class $AssistantEventCopyWith<$Res>  {
$AssistantEventCopyWith(AssistantEvent _, $Res Function(AssistantEvent) __);
}


/// Adds pattern-matching-related methods to [AssistantEvent].
extension AssistantEventPatterns on AssistantEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _MessageSubmittedEvent value)?  messageSubmitted,TResult Function( _SuggestionPressedEvent value)?  suggestionPressed,TResult Function( _RetryPressedEvent value)?  retryPressed,TResult Function( _StrollerAskedEvent value)?  strollerAsked,TResult Function( _StrollerPressedEvent value)?  strollerPressed,TResult Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult Function( _OpenCartPressedEvent value)?  openCartPressed,TResult Function( _CartCountChangedEvent value)?  cartCountChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _MessageSubmittedEvent() when messageSubmitted != null:
return messageSubmitted(_that);case _SuggestionPressedEvent() when suggestionPressed != null:
return suggestionPressed(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _StrollerAskedEvent() when strollerAsked != null:
return strollerAsked(_that);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _OpenCartPressedEvent() when openCartPressed != null:
return openCartPressed(_that);case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _MessageSubmittedEvent value)  messageSubmitted,required TResult Function( _SuggestionPressedEvent value)  suggestionPressed,required TResult Function( _RetryPressedEvent value)  retryPressed,required TResult Function( _StrollerAskedEvent value)  strollerAsked,required TResult Function( _StrollerPressedEvent value)  strollerPressed,required TResult Function( _AddToCartPressedEvent value)  addToCartPressed,required TResult Function( _OpenCartPressedEvent value)  openCartPressed,required TResult Function( _CartCountChangedEvent value)  cartCountChanged,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _MessageSubmittedEvent():
return messageSubmitted(_that);case _SuggestionPressedEvent():
return suggestionPressed(_that);case _RetryPressedEvent():
return retryPressed(_that);case _StrollerAskedEvent():
return strollerAsked(_that);case _StrollerPressedEvent():
return strollerPressed(_that);case _AddToCartPressedEvent():
return addToCartPressed(_that);case _OpenCartPressedEvent():
return openCartPressed(_that);case _CartCountChangedEvent():
return cartCountChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _MessageSubmittedEvent value)?  messageSubmitted,TResult? Function( _SuggestionPressedEvent value)?  suggestionPressed,TResult? Function( _RetryPressedEvent value)?  retryPressed,TResult? Function( _StrollerAskedEvent value)?  strollerAsked,TResult? Function( _StrollerPressedEvent value)?  strollerPressed,TResult? Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult? Function( _OpenCartPressedEvent value)?  openCartPressed,TResult? Function( _CartCountChangedEvent value)?  cartCountChanged,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _MessageSubmittedEvent() when messageSubmitted != null:
return messageSubmitted(_that);case _SuggestionPressedEvent() when suggestionPressed != null:
return suggestionPressed(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _StrollerAskedEvent() when strollerAsked != null:
return strollerAsked(_that);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _OpenCartPressedEvent() when openCartPressed != null:
return openCartPressed(_that);case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function( String text)?  messageSubmitted,TResult Function( String text)?  suggestionPressed,TResult Function()?  retryPressed,TResult Function( Stroller stroller)?  strollerAsked,TResult Function( String strollerId)?  strollerPressed,TResult Function( String strollerId)?  addToCartPressed,TResult Function()?  openCartPressed,TResult Function( int count)?  cartCountChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _MessageSubmittedEvent() when messageSubmitted != null:
return messageSubmitted(_that.text);case _SuggestionPressedEvent() when suggestionPressed != null:
return suggestionPressed(_that.text);case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _StrollerAskedEvent() when strollerAsked != null:
return strollerAsked(_that.stroller);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that.strollerId);case _OpenCartPressedEvent() when openCartPressed != null:
return openCartPressed();case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function( String text)  messageSubmitted,required TResult Function( String text)  suggestionPressed,required TResult Function()  retryPressed,required TResult Function( Stroller stroller)  strollerAsked,required TResult Function( String strollerId)  strollerPressed,required TResult Function( String strollerId)  addToCartPressed,required TResult Function()  openCartPressed,required TResult Function( int count)  cartCountChanged,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _MessageSubmittedEvent():
return messageSubmitted(_that.text);case _SuggestionPressedEvent():
return suggestionPressed(_that.text);case _RetryPressedEvent():
return retryPressed();case _StrollerAskedEvent():
return strollerAsked(_that.stroller);case _StrollerPressedEvent():
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent():
return addToCartPressed(_that.strollerId);case _OpenCartPressedEvent():
return openCartPressed();case _CartCountChangedEvent():
return cartCountChanged(_that.count);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function( String text)?  messageSubmitted,TResult? Function( String text)?  suggestionPressed,TResult? Function()?  retryPressed,TResult? Function( Stroller stroller)?  strollerAsked,TResult? Function( String strollerId)?  strollerPressed,TResult? Function( String strollerId)?  addToCartPressed,TResult? Function()?  openCartPressed,TResult? Function( int count)?  cartCountChanged,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _MessageSubmittedEvent() when messageSubmitted != null:
return messageSubmitted(_that.text);case _SuggestionPressedEvent() when suggestionPressed != null:
return suggestionPressed(_that.text);case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _StrollerAskedEvent() when strollerAsked != null:
return strollerAsked(_that.stroller);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that.strollerId);case _OpenCartPressedEvent() when openCartPressed != null:
return openCartPressed();case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements AssistantEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantEvent.init()';
}


}




/// @nodoc


class _MessageSubmittedEvent implements AssistantEvent {
  const _MessageSubmittedEvent({required this.text});
  

 final  String text;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageSubmittedEventCopyWith<_MessageSubmittedEvent> get copyWith => __$MessageSubmittedEventCopyWithImpl<_MessageSubmittedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageSubmittedEvent&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'AssistantEvent.messageSubmitted(text: $text)';
}


}

/// @nodoc
abstract mixin class _$MessageSubmittedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$MessageSubmittedEventCopyWith(_MessageSubmittedEvent value, $Res Function(_MessageSubmittedEvent) _then) = __$MessageSubmittedEventCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$MessageSubmittedEventCopyWithImpl<$Res>
    implements _$MessageSubmittedEventCopyWith<$Res> {
  __$MessageSubmittedEventCopyWithImpl(this._self, this._then);

  final _MessageSubmittedEvent _self;
  final $Res Function(_MessageSubmittedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_MessageSubmittedEvent(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SuggestionPressedEvent implements AssistantEvent {
  const _SuggestionPressedEvent({required this.text});
  

 final  String text;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuggestionPressedEventCopyWith<_SuggestionPressedEvent> get copyWith => __$SuggestionPressedEventCopyWithImpl<_SuggestionPressedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuggestionPressedEvent&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'AssistantEvent.suggestionPressed(text: $text)';
}


}

/// @nodoc
abstract mixin class _$SuggestionPressedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$SuggestionPressedEventCopyWith(_SuggestionPressedEvent value, $Res Function(_SuggestionPressedEvent) _then) = __$SuggestionPressedEventCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class __$SuggestionPressedEventCopyWithImpl<$Res>
    implements _$SuggestionPressedEventCopyWith<$Res> {
  __$SuggestionPressedEventCopyWithImpl(this._self, this._then);

  final _SuggestionPressedEvent _self;
  final $Res Function(_SuggestionPressedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(_SuggestionPressedEvent(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RetryPressedEvent implements AssistantEvent {
  const _RetryPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantEvent.retryPressed()';
}


}




/// @nodoc


class _StrollerAskedEvent implements AssistantEvent {
  const _StrollerAskedEvent({required this.stroller});
  

 final  Stroller stroller;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollerAskedEventCopyWith<_StrollerAskedEvent> get copyWith => __$StrollerAskedEventCopyWithImpl<_StrollerAskedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollerAskedEvent&&(identical(other.stroller, stroller) || other.stroller == stroller));
}


@override
int get hashCode {
    return Object.hash(runtimeType,stroller);
}

@override
String toString() {
    return 'AssistantEvent.strollerAsked(stroller: $stroller)';
}


}

/// @nodoc
abstract mixin class _$StrollerAskedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$StrollerAskedEventCopyWith(_StrollerAskedEvent value, $Res Function(_StrollerAskedEvent) _then) = __$StrollerAskedEventCopyWithImpl;
@useResult
$Res call({
 Stroller stroller
});


$StrollerCopyWith<$Res> get stroller;

}
/// @nodoc
class __$StrollerAskedEventCopyWithImpl<$Res>
    implements _$StrollerAskedEventCopyWith<$Res> {
  __$StrollerAskedEventCopyWithImpl(this._self, this._then);

  final _StrollerAskedEvent _self;
  final $Res Function(_StrollerAskedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stroller = null,}) {
  return _then(_StrollerAskedEvent(
stroller: null == stroller ? _self.stroller : stroller // ignore: cast_nullable_to_non_nullable
as Stroller,
  ));
}

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerCopyWith<$Res> get stroller {
  
  return $StrollerCopyWith<$Res>(_self.stroller, (value) {
    return _then(_self.copyWith(stroller: value));
  });
}
}

/// @nodoc


class _StrollerPressedEvent implements AssistantEvent {
  const _StrollerPressedEvent({required this.strollerId});
  

 final  String strollerId;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StrollerPressedEventCopyWith<_StrollerPressedEvent> get copyWith => __$StrollerPressedEventCopyWithImpl<_StrollerPressedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _StrollerPressedEvent&&(identical(other.strollerId, strollerId) || other.strollerId == strollerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,strollerId);
}

@override
String toString() {
    return 'AssistantEvent.strollerPressed(strollerId: $strollerId)';
}


}

/// @nodoc
abstract mixin class _$StrollerPressedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$StrollerPressedEventCopyWith(_StrollerPressedEvent value, $Res Function(_StrollerPressedEvent) _then) = __$StrollerPressedEventCopyWithImpl;
@useResult
$Res call({
 String strollerId
});




}
/// @nodoc
class __$StrollerPressedEventCopyWithImpl<$Res>
    implements _$StrollerPressedEventCopyWith<$Res> {
  __$StrollerPressedEventCopyWithImpl(this._self, this._then);

  final _StrollerPressedEvent _self;
  final $Res Function(_StrollerPressedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,}) {
  return _then(_StrollerPressedEvent(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddToCartPressedEvent implements AssistantEvent {
  const _AddToCartPressedEvent({required this.strollerId});
  

 final  String strollerId;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartPressedEventCopyWith<_AddToCartPressedEvent> get copyWith => __$AddToCartPressedEventCopyWithImpl<_AddToCartPressedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartPressedEvent&&(identical(other.strollerId, strollerId) || other.strollerId == strollerId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,strollerId);
}

@override
String toString() {
    return 'AssistantEvent.addToCartPressed(strollerId: $strollerId)';
}


}

/// @nodoc
abstract mixin class _$AddToCartPressedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$AddToCartPressedEventCopyWith(_AddToCartPressedEvent value, $Res Function(_AddToCartPressedEvent) _then) = __$AddToCartPressedEventCopyWithImpl;
@useResult
$Res call({
 String strollerId
});




}
/// @nodoc
class __$AddToCartPressedEventCopyWithImpl<$Res>
    implements _$AddToCartPressedEventCopyWith<$Res> {
  __$AddToCartPressedEventCopyWithImpl(this._self, this._then);

  final _AddToCartPressedEvent _self;
  final $Res Function(_AddToCartPressedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,}) {
  return _then(_AddToCartPressedEvent(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _OpenCartPressedEvent implements AssistantEvent {
  const _OpenCartPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenCartPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AssistantEvent.openCartPressed()';
}


}




/// @nodoc


class _CartCountChangedEvent implements AssistantEvent {
  const _CartCountChangedEvent({required this.count});
  

 final  int count;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCountChangedEventCopyWith<_CartCountChangedEvent> get copyWith => __$CartCountChangedEventCopyWithImpl<_CartCountChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartCountChangedEvent&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode {
    return Object.hash(runtimeType,count);
}

@override
String toString() {
    return 'AssistantEvent.cartCountChanged(count: $count)';
}


}

/// @nodoc
abstract mixin class _$CartCountChangedEventCopyWith<$Res> implements $AssistantEventCopyWith<$Res> {
  factory _$CartCountChangedEventCopyWith(_CartCountChangedEvent value, $Res Function(_CartCountChangedEvent) _then) = __$CartCountChangedEventCopyWithImpl;
@useResult
$Res call({
 int count
});




}
/// @nodoc
class __$CartCountChangedEventCopyWithImpl<$Res>
    implements _$CartCountChangedEventCopyWith<$Res> {
  __$CartCountChangedEventCopyWithImpl(this._self, this._then);

  final _CartCountChangedEvent _self;
  final $Res Function(_CartCountChangedEvent) _then;

/// Create a copy of AssistantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_CartCountChangedEvent(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AssistantState {

 AssistantVM get data;
/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantStateCopyWith<AssistantState> get copyWith => _$AssistantStateCopyWithImpl<AssistantState>(this as AssistantState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AssistantState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantState&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as AssistantState;
  return Object.hash(runtimeType,_this.data);
}

@override
String toString() {
  final _this = this as AssistantState;
  return 'AssistantState(data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $AssistantStateCopyWith<$Res>  {
  factory $AssistantStateCopyWith(AssistantState value, $Res Function(AssistantState) _then) = _$AssistantStateCopyWithImpl;
@useResult
$Res call({
 AssistantVM data
});


$AssistantVMCopyWith<$Res> get data;

}
/// @nodoc
class _$AssistantStateCopyWithImpl<$Res>
    implements $AssistantStateCopyWith<$Res> {
  _$AssistantStateCopyWithImpl(this._self, this._then);

  final AssistantState _self;
  final $Res Function(AssistantState) _then;

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AssistantVM,
  ));
}
/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssistantVMCopyWith<$Res> get data {
  
  return $AssistantVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssistantState].
extension AssistantStatePatterns on AssistantState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AssistantInitialState value)?  initial,TResult Function( AssistantReadyState value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AssistantInitialState() when initial != null:
return initial(_that);case AssistantReadyState() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AssistantInitialState value)  initial,required TResult Function( AssistantReadyState value)  ready,}){
final _that = this;
switch (_that) {
case AssistantInitialState():
return initial(_that);case AssistantReadyState():
return ready(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AssistantInitialState value)?  initial,TResult? Function( AssistantReadyState value)?  ready,}){
final _that = this;
switch (_that) {
case AssistantInitialState() when initial != null:
return initial(_that);case AssistantReadyState() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AssistantVM data)?  initial,TResult Function( AssistantVM data)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AssistantInitialState() when initial != null:
return initial(_that.data);case AssistantReadyState() when ready != null:
return ready(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AssistantVM data)  initial,required TResult Function( AssistantVM data)  ready,}) {final _that = this;
switch (_that) {
case AssistantInitialState():
return initial(_that.data);case AssistantReadyState():
return ready(_that.data);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AssistantVM data)?  initial,TResult? Function( AssistantVM data)?  ready,}) {final _that = this;
switch (_that) {
case AssistantInitialState() when initial != null:
return initial(_that.data);case AssistantReadyState() when ready != null:
return ready(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class AssistantInitialState implements AssistantState {
  const AssistantInitialState({required this.data});
  

@override final  AssistantVM data;

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantInitialStateCopyWith<AssistantInitialState> get copyWith => _$AssistantInitialStateCopyWithImpl<AssistantInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'AssistantState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $AssistantInitialStateCopyWith<$Res> implements $AssistantStateCopyWith<$Res> {
  factory $AssistantInitialStateCopyWith(AssistantInitialState value, $Res Function(AssistantInitialState) _then) = _$AssistantInitialStateCopyWithImpl;
@override @useResult
$Res call({
 AssistantVM data
});


@override $AssistantVMCopyWith<$Res> get data;

}
/// @nodoc
class _$AssistantInitialStateCopyWithImpl<$Res>
    implements $AssistantInitialStateCopyWith<$Res> {
  _$AssistantInitialStateCopyWithImpl(this._self, this._then);

  final AssistantInitialState _self;
  final $Res Function(AssistantInitialState) _then;

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AssistantInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AssistantVM,
  ));
}

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssistantVMCopyWith<$Res> get data {
  
  return $AssistantVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class AssistantReadyState implements AssistantState {
  const AssistantReadyState({required this.data});
  

@override final  AssistantVM data;

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantReadyStateCopyWith<AssistantReadyState> get copyWith => _$AssistantReadyStateCopyWithImpl<AssistantReadyState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantReadyState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'AssistantState.ready(data: $data)';
}


}

/// @nodoc
abstract mixin class $AssistantReadyStateCopyWith<$Res> implements $AssistantStateCopyWith<$Res> {
  factory $AssistantReadyStateCopyWith(AssistantReadyState value, $Res Function(AssistantReadyState) _then) = _$AssistantReadyStateCopyWithImpl;
@override @useResult
$Res call({
 AssistantVM data
});


@override $AssistantVMCopyWith<$Res> get data;

}
/// @nodoc
class _$AssistantReadyStateCopyWithImpl<$Res>
    implements $AssistantReadyStateCopyWith<$Res> {
  _$AssistantReadyStateCopyWithImpl(this._self, this._then);

  final AssistantReadyState _self;
  final $Res Function(AssistantReadyState) _then;

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(AssistantReadyState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as AssistantVM,
  ));
}

/// Create a copy of AssistantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AssistantVMCopyWith<$Res> get data {
  
  return $AssistantVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
