// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stroller_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StrollerDetailsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent()';
}


}

/// @nodoc
class $StrollerDetailsEventCopyWith<$Res>  {
$StrollerDetailsEventCopyWith(StrollerDetailsEvent _, $Res Function(StrollerDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [StrollerDetailsEvent].
extension StrollerDetailsEventPatterns on StrollerDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _RetryPressedEvent value)?  retryPressed,TResult Function( _ColorSelectedEvent value)?  colorSelected,TResult Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult Function( _AskAssistantPressedEvent value)?  askAssistantPressed,TResult Function( _BackPressedEvent value)?  backPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _ColorSelectedEvent() when colorSelected != null:
return colorSelected(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _AskAssistantPressedEvent() when askAssistantPressed != null:
return askAssistantPressed(_that);case _BackPressedEvent() when backPressed != null:
return backPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _RetryPressedEvent value)  retryPressed,required TResult Function( _ColorSelectedEvent value)  colorSelected,required TResult Function( _AddToCartPressedEvent value)  addToCartPressed,required TResult Function( _AskAssistantPressedEvent value)  askAssistantPressed,required TResult Function( _BackPressedEvent value)  backPressed,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _RetryPressedEvent():
return retryPressed(_that);case _ColorSelectedEvent():
return colorSelected(_that);case _AddToCartPressedEvent():
return addToCartPressed(_that);case _AskAssistantPressedEvent():
return askAssistantPressed(_that);case _BackPressedEvent():
return backPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _RetryPressedEvent value)?  retryPressed,TResult? Function( _ColorSelectedEvent value)?  colorSelected,TResult? Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult? Function( _AskAssistantPressedEvent value)?  askAssistantPressed,TResult? Function( _BackPressedEvent value)?  backPressed,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _ColorSelectedEvent() when colorSelected != null:
return colorSelected(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _AskAssistantPressedEvent() when askAssistantPressed != null:
return askAssistantPressed(_that);case _BackPressedEvent() when backPressed != null:
return backPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  retryPressed,TResult Function( String color)?  colorSelected,TResult Function()?  addToCartPressed,TResult Function()?  askAssistantPressed,TResult Function()?  backPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _ColorSelectedEvent() when colorSelected != null:
return colorSelected(_that.color);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed();case _AskAssistantPressedEvent() when askAssistantPressed != null:
return askAssistantPressed();case _BackPressedEvent() when backPressed != null:
return backPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  retryPressed,required TResult Function( String color)  colorSelected,required TResult Function()  addToCartPressed,required TResult Function()  askAssistantPressed,required TResult Function()  backPressed,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _RetryPressedEvent():
return retryPressed();case _ColorSelectedEvent():
return colorSelected(_that.color);case _AddToCartPressedEvent():
return addToCartPressed();case _AskAssistantPressedEvent():
return askAssistantPressed();case _BackPressedEvent():
return backPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  retryPressed,TResult? Function( String color)?  colorSelected,TResult? Function()?  addToCartPressed,TResult? Function()?  askAssistantPressed,TResult? Function()?  backPressed,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _ColorSelectedEvent() when colorSelected != null:
return colorSelected(_that.color);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed();case _AskAssistantPressedEvent() when askAssistantPressed != null:
return askAssistantPressed();case _BackPressedEvent() when backPressed != null:
return backPressed();case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements StrollerDetailsEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent.init()';
}


}




/// @nodoc


class _RetryPressedEvent implements StrollerDetailsEvent {
  const _RetryPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent.retryPressed()';
}


}




/// @nodoc


class _ColorSelectedEvent implements StrollerDetailsEvent {
  const _ColorSelectedEvent({required this.color});
  

 final  String color;

/// Create a copy of StrollerDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColorSelectedEventCopyWith<_ColorSelectedEvent> get copyWith => __$ColorSelectedEventCopyWithImpl<_ColorSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColorSelectedEvent&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode {
    return Object.hash(runtimeType,color);
}

@override
String toString() {
    return 'StrollerDetailsEvent.colorSelected(color: $color)';
}


}

/// @nodoc
abstract mixin class _$ColorSelectedEventCopyWith<$Res> implements $StrollerDetailsEventCopyWith<$Res> {
  factory _$ColorSelectedEventCopyWith(_ColorSelectedEvent value, $Res Function(_ColorSelectedEvent) _then) = __$ColorSelectedEventCopyWithImpl;
@useResult
$Res call({
 String color
});




}
/// @nodoc
class __$ColorSelectedEventCopyWithImpl<$Res>
    implements _$ColorSelectedEventCopyWith<$Res> {
  __$ColorSelectedEventCopyWithImpl(this._self, this._then);

  final _ColorSelectedEvent _self;
  final $Res Function(_ColorSelectedEvent) _then;

/// Create a copy of StrollerDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? color = null,}) {
  return _then(_ColorSelectedEvent(
color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddToCartPressedEvent implements StrollerDetailsEvent {
  const _AddToCartPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent.addToCartPressed()';
}


}




/// @nodoc


class _AskAssistantPressedEvent implements StrollerDetailsEvent {
  const _AskAssistantPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AskAssistantPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent.askAssistantPressed()';
}


}




/// @nodoc


class _BackPressedEvent implements StrollerDetailsEvent {
  const _BackPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BackPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsEvent.backPressed()';
}


}




/// @nodoc
mixin _$StrollerDetailsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsState()';
}


}

/// @nodoc
class $StrollerDetailsStateCopyWith<$Res>  {
$StrollerDetailsStateCopyWith(StrollerDetailsState _, $Res Function(StrollerDetailsState) __);
}


/// Adds pattern-matching-related methods to [StrollerDetailsState].
extension StrollerDetailsStatePatterns on StrollerDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StrollerDetailsInitialState value)?  initial,TResult Function( StrollerDetailsLoadingState value)?  loading,TResult Function( StrollerDetailsLoadedState value)?  loaded,TResult Function( StrollerDetailsErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StrollerDetailsInitialState() when initial != null:
return initial(_that);case StrollerDetailsLoadingState() when loading != null:
return loading(_that);case StrollerDetailsLoadedState() when loaded != null:
return loaded(_that);case StrollerDetailsErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StrollerDetailsInitialState value)  initial,required TResult Function( StrollerDetailsLoadingState value)  loading,required TResult Function( StrollerDetailsLoadedState value)  loaded,required TResult Function( StrollerDetailsErrorState value)  error,}){
final _that = this;
switch (_that) {
case StrollerDetailsInitialState():
return initial(_that);case StrollerDetailsLoadingState():
return loading(_that);case StrollerDetailsLoadedState():
return loaded(_that);case StrollerDetailsErrorState():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StrollerDetailsInitialState value)?  initial,TResult? Function( StrollerDetailsLoadingState value)?  loading,TResult? Function( StrollerDetailsLoadedState value)?  loaded,TResult? Function( StrollerDetailsErrorState value)?  error,}){
final _that = this;
switch (_that) {
case StrollerDetailsInitialState() when initial != null:
return initial(_that);case StrollerDetailsLoadingState() when loading != null:
return loading(_that);case StrollerDetailsLoadedState() when loaded != null:
return loaded(_that);case StrollerDetailsErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( StrollerDetailsVM data)?  loaded,TResult Function( Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StrollerDetailsInitialState() when initial != null:
return initial();case StrollerDetailsLoadingState() when loading != null:
return loading();case StrollerDetailsLoadedState() when loaded != null:
return loaded(_that.data);case StrollerDetailsErrorState() when error != null:
return error(_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( StrollerDetailsVM data)  loaded,required TResult Function( Exception exception)  error,}) {final _that = this;
switch (_that) {
case StrollerDetailsInitialState():
return initial();case StrollerDetailsLoadingState():
return loading();case StrollerDetailsLoadedState():
return loaded(_that.data);case StrollerDetailsErrorState():
return error(_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( StrollerDetailsVM data)?  loaded,TResult? Function( Exception exception)?  error,}) {final _that = this;
switch (_that) {
case StrollerDetailsInitialState() when initial != null:
return initial();case StrollerDetailsLoadingState() when loading != null:
return loading();case StrollerDetailsLoadedState() when loaded != null:
return loaded(_that.data);case StrollerDetailsErrorState() when error != null:
return error(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class StrollerDetailsInitialState implements StrollerDetailsState {
  const StrollerDetailsInitialState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsState.initial()';
}


}




/// @nodoc


class StrollerDetailsLoadingState implements StrollerDetailsState {
  const StrollerDetailsLoadingState();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'StrollerDetailsState.loading()';
}


}




/// @nodoc


class StrollerDetailsLoadedState implements StrollerDetailsState {
  const StrollerDetailsLoadedState({required this.data});
  

 final  StrollerDetailsVM data;

/// Create a copy of StrollerDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerDetailsLoadedStateCopyWith<StrollerDetailsLoadedState> get copyWith => _$StrollerDetailsLoadedStateCopyWithImpl<StrollerDetailsLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsLoadedState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'StrollerDetailsState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $StrollerDetailsLoadedStateCopyWith<$Res> implements $StrollerDetailsStateCopyWith<$Res> {
  factory $StrollerDetailsLoadedStateCopyWith(StrollerDetailsLoadedState value, $Res Function(StrollerDetailsLoadedState) _then) = _$StrollerDetailsLoadedStateCopyWithImpl;
@useResult
$Res call({
 StrollerDetailsVM data
});


$StrollerDetailsVMCopyWith<$Res> get data;

}
/// @nodoc
class _$StrollerDetailsLoadedStateCopyWithImpl<$Res>
    implements $StrollerDetailsLoadedStateCopyWith<$Res> {
  _$StrollerDetailsLoadedStateCopyWithImpl(this._self, this._then);

  final StrollerDetailsLoadedState _self;
  final $Res Function(StrollerDetailsLoadedState) _then;

/// Create a copy of StrollerDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(StrollerDetailsLoadedState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as StrollerDetailsVM,
  ));
}

/// Create a copy of StrollerDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StrollerDetailsVMCopyWith<$Res> get data {
  
  return $StrollerDetailsVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class StrollerDetailsErrorState implements StrollerDetailsState, BlocErrorStateInterface {
  const StrollerDetailsErrorState({required this.exception});
  

 final  Exception exception;

/// Create a copy of StrollerDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerDetailsErrorStateCopyWith<StrollerDetailsErrorState> get copyWith => _$StrollerDetailsErrorStateCopyWithImpl<StrollerDetailsErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerDetailsErrorState&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,exception);
}

@override
String toString() {
    return 'StrollerDetailsState.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $StrollerDetailsErrorStateCopyWith<$Res> implements $StrollerDetailsStateCopyWith<$Res> {
  factory $StrollerDetailsErrorStateCopyWith(StrollerDetailsErrorState value, $Res Function(StrollerDetailsErrorState) _then) = _$StrollerDetailsErrorStateCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$StrollerDetailsErrorStateCopyWithImpl<$Res>
    implements $StrollerDetailsErrorStateCopyWith<$Res> {
  _$StrollerDetailsErrorStateCopyWithImpl(this._self, this._then);

  final StrollerDetailsErrorState _self;
  final $Res Function(StrollerDetailsErrorState) _then;

/// Create a copy of StrollerDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(StrollerDetailsErrorState(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
