// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShopEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopEvent()';
}


}

/// @nodoc
class $ShopEventCopyWith<$Res>  {
$ShopEventCopyWith(ShopEvent _, $Res Function(ShopEvent) __);
}


/// Adds pattern-matching-related methods to [ShopEvent].
extension ShopEventPatterns on ShopEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _RetryPressedEvent value)?  retryPressed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _RetryPressedEvent value)  retryPressed,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _RetryPressedEvent():
return retryPressed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _RetryPressedEvent value)?  retryPressed,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  retryPressed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  retryPressed,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _RetryPressedEvent():
return retryPressed();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  retryPressed,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements ShopEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopEvent.init()';
}


}




/// @nodoc


class _RetryPressedEvent implements ShopEvent {
  const _RetryPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ShopEvent.retryPressed()';
}


}




/// @nodoc
mixin _$ShopState {

 ShopVM get data;
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopStateCopyWith<ShopState> get copyWith => _$ShopStateCopyWithImpl<ShopState>(this as ShopState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ShopState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopState&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as ShopState;
  return Object.hash(runtimeType,_this.data);
}

@override
String toString() {
  final _this = this as ShopState;
  return 'ShopState(data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $ShopStateCopyWith<$Res>  {
  factory $ShopStateCopyWith(ShopState value, $Res Function(ShopState) _then) = _$ShopStateCopyWithImpl;
@useResult
$Res call({
 ShopVM data
});


$ShopVMCopyWith<$Res> get data;

}
/// @nodoc
class _$ShopStateCopyWithImpl<$Res>
    implements $ShopStateCopyWith<$Res> {
  _$ShopStateCopyWithImpl(this._self, this._then);

  final ShopState _self;
  final $Res Function(ShopState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShopVM,
  ));
}
/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopVMCopyWith<$Res> get data {
  
  return $ShopVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShopState].
extension ShopStatePatterns on ShopState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ShopInitialState value)?  initial,TResult Function( ShopLoadingState value)?  loading,TResult Function( ShopLoadedState value)?  loaded,TResult Function( ShopErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ShopInitialState() when initial != null:
return initial(_that);case ShopLoadingState() when loading != null:
return loading(_that);case ShopLoadedState() when loaded != null:
return loaded(_that);case ShopErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ShopInitialState value)  initial,required TResult Function( ShopLoadingState value)  loading,required TResult Function( ShopLoadedState value)  loaded,required TResult Function( ShopErrorState value)  error,}){
final _that = this;
switch (_that) {
case ShopInitialState():
return initial(_that);case ShopLoadingState():
return loading(_that);case ShopLoadedState():
return loaded(_that);case ShopErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ShopInitialState value)?  initial,TResult? Function( ShopLoadingState value)?  loading,TResult? Function( ShopLoadedState value)?  loaded,TResult? Function( ShopErrorState value)?  error,}){
final _that = this;
switch (_that) {
case ShopInitialState() when initial != null:
return initial(_that);case ShopLoadingState() when loading != null:
return loading(_that);case ShopLoadedState() when loaded != null:
return loaded(_that);case ShopErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ShopVM data)?  initial,TResult Function( ShopVM data)?  loading,TResult Function( ShopVM data)?  loaded,TResult Function( ShopVM data,  Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ShopInitialState() when initial != null:
return initial(_that.data);case ShopLoadingState() when loading != null:
return loading(_that.data);case ShopLoadedState() when loaded != null:
return loaded(_that.data);case ShopErrorState() when error != null:
return error(_that.data,_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ShopVM data)  initial,required TResult Function( ShopVM data)  loading,required TResult Function( ShopVM data)  loaded,required TResult Function( ShopVM data,  Exception exception)  error,}) {final _that = this;
switch (_that) {
case ShopInitialState():
return initial(_that.data);case ShopLoadingState():
return loading(_that.data);case ShopLoadedState():
return loaded(_that.data);case ShopErrorState():
return error(_that.data,_that.exception);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ShopVM data)?  initial,TResult? Function( ShopVM data)?  loading,TResult? Function( ShopVM data)?  loaded,TResult? Function( ShopVM data,  Exception exception)?  error,}) {final _that = this;
switch (_that) {
case ShopInitialState() when initial != null:
return initial(_that.data);case ShopLoadingState() when loading != null:
return loading(_that.data);case ShopLoadedState() when loaded != null:
return loaded(_that.data);case ShopErrorState() when error != null:
return error(_that.data,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class ShopInitialState implements ShopState {
  const ShopInitialState({required this.data});
  

@override final  ShopVM data;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopInitialStateCopyWith<ShopInitialState> get copyWith => _$ShopInitialStateCopyWithImpl<ShopInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'ShopState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $ShopInitialStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ShopInitialStateCopyWith(ShopInitialState value, $Res Function(ShopInitialState) _then) = _$ShopInitialStateCopyWithImpl;
@override @useResult
$Res call({
 ShopVM data
});


@override $ShopVMCopyWith<$Res> get data;

}
/// @nodoc
class _$ShopInitialStateCopyWithImpl<$Res>
    implements $ShopInitialStateCopyWith<$Res> {
  _$ShopInitialStateCopyWithImpl(this._self, this._then);

  final ShopInitialState _self;
  final $Res Function(ShopInitialState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ShopInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShopVM,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopVMCopyWith<$Res> get data {
  
  return $ShopVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class ShopLoadingState implements ShopState {
  const ShopLoadingState({required this.data});
  

@override final  ShopVM data;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopLoadingStateCopyWith<ShopLoadingState> get copyWith => _$ShopLoadingStateCopyWithImpl<ShopLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopLoadingState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'ShopState.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $ShopLoadingStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ShopLoadingStateCopyWith(ShopLoadingState value, $Res Function(ShopLoadingState) _then) = _$ShopLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 ShopVM data
});


@override $ShopVMCopyWith<$Res> get data;

}
/// @nodoc
class _$ShopLoadingStateCopyWithImpl<$Res>
    implements $ShopLoadingStateCopyWith<$Res> {
  _$ShopLoadingStateCopyWithImpl(this._self, this._then);

  final ShopLoadingState _self;
  final $Res Function(ShopLoadingState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ShopLoadingState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShopVM,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopVMCopyWith<$Res> get data {
  
  return $ShopVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class ShopLoadedState implements ShopState {
  const ShopLoadedState({required this.data});
  

@override final  ShopVM data;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopLoadedStateCopyWith<ShopLoadedState> get copyWith => _$ShopLoadedStateCopyWithImpl<ShopLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopLoadedState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'ShopState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $ShopLoadedStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ShopLoadedStateCopyWith(ShopLoadedState value, $Res Function(ShopLoadedState) _then) = _$ShopLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 ShopVM data
});


@override $ShopVMCopyWith<$Res> get data;

}
/// @nodoc
class _$ShopLoadedStateCopyWithImpl<$Res>
    implements $ShopLoadedStateCopyWith<$Res> {
  _$ShopLoadedStateCopyWithImpl(this._self, this._then);

  final ShopLoadedState _self;
  final $Res Function(ShopLoadedState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ShopLoadedState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShopVM,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopVMCopyWith<$Res> get data {
  
  return $ShopVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class ShopErrorState implements ShopState, BlocErrorStateInterface {
  const ShopErrorState({required this.data, required this.exception});
  

@override final  ShopVM data;
 final  Exception exception;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopErrorStateCopyWith<ShopErrorState> get copyWith => _$ShopErrorStateCopyWithImpl<ShopErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopErrorState&&(identical(other.data, data) || other.data == data)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,exception);
}

@override
String toString() {
    return 'ShopState.error(data: $data, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ShopErrorStateCopyWith<$Res> implements $ShopStateCopyWith<$Res> {
  factory $ShopErrorStateCopyWith(ShopErrorState value, $Res Function(ShopErrorState) _then) = _$ShopErrorStateCopyWithImpl;
@override @useResult
$Res call({
 ShopVM data, Exception exception
});


@override $ShopVMCopyWith<$Res> get data;

}
/// @nodoc
class _$ShopErrorStateCopyWithImpl<$Res>
    implements $ShopErrorStateCopyWith<$Res> {
  _$ShopErrorStateCopyWithImpl(this._self, this._then);

  final ShopErrorState _self;
  final $Res Function(ShopErrorState) _then;

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? exception = null,}) {
  return _then(ShopErrorState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ShopVM,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}

/// Create a copy of ShopState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShopVMCopyWith<$Res> get data {
  
  return $ShopVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
