// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent()';
}


}

/// @nodoc
class $CatalogEventCopyWith<$Res>  {
$CatalogEventCopyWith(CatalogEvent _, $Res Function(CatalogEvent) __);
}


/// Adds pattern-matching-related methods to [CatalogEvent].
extension CatalogEventPatterns on CatalogEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InitEvent value)?  init,TResult Function( _RetryPressedEvent value)?  retryPressed,TResult Function( _QueryChangedEvent value)?  queryChanged,TResult Function( _TypeSelectedEvent value)?  typeSelected,TResult Function( _SortPressedEvent value)?  sortPressed,TResult Function( _LoadMoreEvent value)?  loadMore,TResult Function( _StrollerPressedEvent value)?  strollerPressed,TResult Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult Function( _AssistantPressedEvent value)?  assistantPressed,TResult Function( _CartPressedEvent value)?  cartPressed,TResult Function( _CartCountChangedEvent value)?  cartCountChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _QueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _TypeSelectedEvent() when typeSelected != null:
return typeSelected(_that);case _SortPressedEvent() when sortPressed != null:
return sortPressed(_that);case _LoadMoreEvent() when loadMore != null:
return loadMore(_that);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _AssistantPressedEvent() when assistantPressed != null:
return assistantPressed(_that);case _CartPressedEvent() when cartPressed != null:
return cartPressed(_that);case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InitEvent value)  init,required TResult Function( _RetryPressedEvent value)  retryPressed,required TResult Function( _QueryChangedEvent value)  queryChanged,required TResult Function( _TypeSelectedEvent value)  typeSelected,required TResult Function( _SortPressedEvent value)  sortPressed,required TResult Function( _LoadMoreEvent value)  loadMore,required TResult Function( _StrollerPressedEvent value)  strollerPressed,required TResult Function( _AddToCartPressedEvent value)  addToCartPressed,required TResult Function( _AssistantPressedEvent value)  assistantPressed,required TResult Function( _CartPressedEvent value)  cartPressed,required TResult Function( _CartCountChangedEvent value)  cartCountChanged,}){
final _that = this;
switch (_that) {
case _InitEvent():
return init(_that);case _RetryPressedEvent():
return retryPressed(_that);case _QueryChangedEvent():
return queryChanged(_that);case _TypeSelectedEvent():
return typeSelected(_that);case _SortPressedEvent():
return sortPressed(_that);case _LoadMoreEvent():
return loadMore(_that);case _StrollerPressedEvent():
return strollerPressed(_that);case _AddToCartPressedEvent():
return addToCartPressed(_that);case _AssistantPressedEvent():
return assistantPressed(_that);case _CartPressedEvent():
return cartPressed(_that);case _CartCountChangedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InitEvent value)?  init,TResult? Function( _RetryPressedEvent value)?  retryPressed,TResult? Function( _QueryChangedEvent value)?  queryChanged,TResult? Function( _TypeSelectedEvent value)?  typeSelected,TResult? Function( _SortPressedEvent value)?  sortPressed,TResult? Function( _LoadMoreEvent value)?  loadMore,TResult? Function( _StrollerPressedEvent value)?  strollerPressed,TResult? Function( _AddToCartPressedEvent value)?  addToCartPressed,TResult? Function( _AssistantPressedEvent value)?  assistantPressed,TResult? Function( _CartPressedEvent value)?  cartPressed,TResult? Function( _CartCountChangedEvent value)?  cartCountChanged,}){
final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init(_that);case _RetryPressedEvent() when retryPressed != null:
return retryPressed(_that);case _QueryChangedEvent() when queryChanged != null:
return queryChanged(_that);case _TypeSelectedEvent() when typeSelected != null:
return typeSelected(_that);case _SortPressedEvent() when sortPressed != null:
return sortPressed(_that);case _LoadMoreEvent() when loadMore != null:
return loadMore(_that);case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that);case _AssistantPressedEvent() when assistantPressed != null:
return assistantPressed(_that);case _CartPressedEvent() when cartPressed != null:
return cartPressed(_that);case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  retryPressed,TResult Function( String query)?  queryChanged,TResult Function( StrollerType? type)?  typeSelected,TResult Function()?  sortPressed,TResult Function()?  loadMore,TResult Function( String strollerId)?  strollerPressed,TResult Function( String strollerId)?  addToCartPressed,TResult Function()?  assistantPressed,TResult Function()?  cartPressed,TResult Function( int count)?  cartCountChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _QueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _TypeSelectedEvent() when typeSelected != null:
return typeSelected(_that.type);case _SortPressedEvent() when sortPressed != null:
return sortPressed();case _LoadMoreEvent() when loadMore != null:
return loadMore();case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that.strollerId);case _AssistantPressedEvent() when assistantPressed != null:
return assistantPressed();case _CartPressedEvent() when cartPressed != null:
return cartPressed();case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  retryPressed,required TResult Function( String query)  queryChanged,required TResult Function( StrollerType? type)  typeSelected,required TResult Function()  sortPressed,required TResult Function()  loadMore,required TResult Function( String strollerId)  strollerPressed,required TResult Function( String strollerId)  addToCartPressed,required TResult Function()  assistantPressed,required TResult Function()  cartPressed,required TResult Function( int count)  cartCountChanged,}) {final _that = this;
switch (_that) {
case _InitEvent():
return init();case _RetryPressedEvent():
return retryPressed();case _QueryChangedEvent():
return queryChanged(_that.query);case _TypeSelectedEvent():
return typeSelected(_that.type);case _SortPressedEvent():
return sortPressed();case _LoadMoreEvent():
return loadMore();case _StrollerPressedEvent():
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent():
return addToCartPressed(_that.strollerId);case _AssistantPressedEvent():
return assistantPressed();case _CartPressedEvent():
return cartPressed();case _CartCountChangedEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  retryPressed,TResult? Function( String query)?  queryChanged,TResult? Function( StrollerType? type)?  typeSelected,TResult? Function()?  sortPressed,TResult? Function()?  loadMore,TResult? Function( String strollerId)?  strollerPressed,TResult? Function( String strollerId)?  addToCartPressed,TResult? Function()?  assistantPressed,TResult? Function()?  cartPressed,TResult? Function( int count)?  cartCountChanged,}) {final _that = this;
switch (_that) {
case _InitEvent() when init != null:
return init();case _RetryPressedEvent() when retryPressed != null:
return retryPressed();case _QueryChangedEvent() when queryChanged != null:
return queryChanged(_that.query);case _TypeSelectedEvent() when typeSelected != null:
return typeSelected(_that.type);case _SortPressedEvent() when sortPressed != null:
return sortPressed();case _LoadMoreEvent() when loadMore != null:
return loadMore();case _StrollerPressedEvent() when strollerPressed != null:
return strollerPressed(_that.strollerId);case _AddToCartPressedEvent() when addToCartPressed != null:
return addToCartPressed(_that.strollerId);case _AssistantPressedEvent() when assistantPressed != null:
return assistantPressed();case _CartPressedEvent() when cartPressed != null:
return cartPressed();case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _InitEvent implements CatalogEvent {
  const _InitEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.init()';
}


}




/// @nodoc


class _RetryPressedEvent implements CatalogEvent {
  const _RetryPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetryPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.retryPressed()';
}


}




/// @nodoc


class _QueryChangedEvent implements CatalogEvent {
  const _QueryChangedEvent({required this.query});
  

 final  String query;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryChangedEventCopyWith<_QueryChangedEvent> get copyWith => __$QueryChangedEventCopyWithImpl<_QueryChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryChangedEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query);
}

@override
String toString() {
    return 'CatalogEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$QueryChangedEventCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory _$QueryChangedEventCopyWith(_QueryChangedEvent value, $Res Function(_QueryChangedEvent) _then) = __$QueryChangedEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$QueryChangedEventCopyWithImpl<$Res>
    implements _$QueryChangedEventCopyWith<$Res> {
  __$QueryChangedEventCopyWithImpl(this._self, this._then);

  final _QueryChangedEvent _self;
  final $Res Function(_QueryChangedEvent) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_QueryChangedEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TypeSelectedEvent implements CatalogEvent {
  const _TypeSelectedEvent({required this.type});
  

 final  StrollerType? type;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeSelectedEventCopyWith<_TypeSelectedEvent> get copyWith => __$TypeSelectedEventCopyWithImpl<_TypeSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeSelectedEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode {
    return Object.hash(runtimeType,type);
}

@override
String toString() {
    return 'CatalogEvent.typeSelected(type: $type)';
}


}

/// @nodoc
abstract mixin class _$TypeSelectedEventCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
  factory _$TypeSelectedEventCopyWith(_TypeSelectedEvent value, $Res Function(_TypeSelectedEvent) _then) = __$TypeSelectedEventCopyWithImpl;
@useResult
$Res call({
 StrollerType? type
});




}
/// @nodoc
class __$TypeSelectedEventCopyWithImpl<$Res>
    implements _$TypeSelectedEventCopyWith<$Res> {
  __$TypeSelectedEventCopyWithImpl(this._self, this._then);

  final _TypeSelectedEvent _self;
  final $Res Function(_TypeSelectedEvent) _then;

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(_TypeSelectedEvent(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as StrollerType?,
  ));
}


}

/// @nodoc


class _SortPressedEvent implements CatalogEvent {
  const _SortPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.sortPressed()';
}


}




/// @nodoc


class _LoadMoreEvent implements CatalogEvent {
  const _LoadMoreEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.loadMore()';
}


}




/// @nodoc


class _StrollerPressedEvent implements CatalogEvent {
  const _StrollerPressedEvent({required this.strollerId});
  

 final  String strollerId;

/// Create a copy of CatalogEvent
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
    return 'CatalogEvent.strollerPressed(strollerId: $strollerId)';
}


}

/// @nodoc
abstract mixin class _$StrollerPressedEventCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
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

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,}) {
  return _then(_StrollerPressedEvent(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AddToCartPressedEvent implements CatalogEvent {
  const _AddToCartPressedEvent({required this.strollerId});
  

 final  String strollerId;

/// Create a copy of CatalogEvent
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
    return 'CatalogEvent.addToCartPressed(strollerId: $strollerId)';
}


}

/// @nodoc
abstract mixin class _$AddToCartPressedEventCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
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

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollerId = null,}) {
  return _then(_AddToCartPressedEvent(
strollerId: null == strollerId ? _self.strollerId : strollerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AssistantPressedEvent implements CatalogEvent {
  const _AssistantPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.assistantPressed()';
}


}




/// @nodoc


class _CartPressedEvent implements CatalogEvent {
  const _CartPressedEvent();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartPressedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'CatalogEvent.cartPressed()';
}


}




/// @nodoc


class _CartCountChangedEvent implements CatalogEvent {
  const _CartCountChangedEvent({required this.count});
  

 final  int count;

/// Create a copy of CatalogEvent
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
    return 'CatalogEvent.cartCountChanged(count: $count)';
}


}

/// @nodoc
abstract mixin class _$CartCountChangedEventCopyWith<$Res> implements $CatalogEventCopyWith<$Res> {
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

/// Create a copy of CatalogEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_CartCountChangedEvent(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CatalogState {

 CatalogVM get data;
/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogStateCopyWith<CatalogState> get copyWith => _$CatalogStateCopyWithImpl<CatalogState>(this as CatalogState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CatalogState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogState&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as CatalogState;
  return Object.hash(runtimeType,_this.data);
}

@override
String toString() {
  final _this = this as CatalogState;
  return 'CatalogState(data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $CatalogStateCopyWith<$Res>  {
  factory $CatalogStateCopyWith(CatalogState value, $Res Function(CatalogState) _then) = _$CatalogStateCopyWithImpl;
@useResult
$Res call({
 CatalogVM data
});


$CatalogVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogStateCopyWithImpl<$Res>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._self, this._then);

  final CatalogState _self;
  final $Res Function(CatalogState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CatalogVM,
  ));
}
/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<$Res> get data {
  
  return $CatalogVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogState].
extension CatalogStatePatterns on CatalogState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CatalogInitialState value)?  initial,TResult Function( CatalogLoadingState value)?  loading,TResult Function( CatalogLoadedState value)?  loaded,TResult Function( CatalogErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CatalogInitialState() when initial != null:
return initial(_that);case CatalogLoadingState() when loading != null:
return loading(_that);case CatalogLoadedState() when loaded != null:
return loaded(_that);case CatalogErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CatalogInitialState value)  initial,required TResult Function( CatalogLoadingState value)  loading,required TResult Function( CatalogLoadedState value)  loaded,required TResult Function( CatalogErrorState value)  error,}){
final _that = this;
switch (_that) {
case CatalogInitialState():
return initial(_that);case CatalogLoadingState():
return loading(_that);case CatalogLoadedState():
return loaded(_that);case CatalogErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CatalogInitialState value)?  initial,TResult? Function( CatalogLoadingState value)?  loading,TResult? Function( CatalogLoadedState value)?  loaded,TResult? Function( CatalogErrorState value)?  error,}){
final _that = this;
switch (_that) {
case CatalogInitialState() when initial != null:
return initial(_that);case CatalogLoadingState() when loading != null:
return loading(_that);case CatalogLoadedState() when loaded != null:
return loaded(_that);case CatalogErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( CatalogVM data)?  initial,TResult Function( CatalogVM data)?  loading,TResult Function( CatalogVM data)?  loaded,TResult Function( CatalogVM data,  Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CatalogInitialState() when initial != null:
return initial(_that.data);case CatalogLoadingState() when loading != null:
return loading(_that.data);case CatalogLoadedState() when loaded != null:
return loaded(_that.data);case CatalogErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( CatalogVM data)  initial,required TResult Function( CatalogVM data)  loading,required TResult Function( CatalogVM data)  loaded,required TResult Function( CatalogVM data,  Exception exception)  error,}) {final _that = this;
switch (_that) {
case CatalogInitialState():
return initial(_that.data);case CatalogLoadingState():
return loading(_that.data);case CatalogLoadedState():
return loaded(_that.data);case CatalogErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( CatalogVM data)?  initial,TResult? Function( CatalogVM data)?  loading,TResult? Function( CatalogVM data)?  loaded,TResult? Function( CatalogVM data,  Exception exception)?  error,}) {final _that = this;
switch (_that) {
case CatalogInitialState() when initial != null:
return initial(_that.data);case CatalogLoadingState() when loading != null:
return loading(_that.data);case CatalogLoadedState() when loaded != null:
return loaded(_that.data);case CatalogErrorState() when error != null:
return error(_that.data,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class CatalogInitialState implements CatalogState {
  const CatalogInitialState({required this.data});
  

@override final  CatalogVM data;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogInitialStateCopyWith<CatalogInitialState> get copyWith => _$CatalogInitialStateCopyWithImpl<CatalogInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CatalogState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $CatalogInitialStateCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogInitialStateCopyWith(CatalogInitialState value, $Res Function(CatalogInitialState) _then) = _$CatalogInitialStateCopyWithImpl;
@override @useResult
$Res call({
 CatalogVM data
});


@override $CatalogVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogInitialStateCopyWithImpl<$Res>
    implements $CatalogInitialStateCopyWith<$Res> {
  _$CatalogInitialStateCopyWithImpl(this._self, this._then);

  final CatalogInitialState _self;
  final $Res Function(CatalogInitialState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CatalogInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CatalogVM,
  ));
}

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<$Res> get data {
  
  return $CatalogVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CatalogLoadingState implements CatalogState {
  const CatalogLoadingState({required this.data});
  

@override final  CatalogVM data;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogLoadingStateCopyWith<CatalogLoadingState> get copyWith => _$CatalogLoadingStateCopyWithImpl<CatalogLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogLoadingState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CatalogState.loading(data: $data)';
}


}

/// @nodoc
abstract mixin class $CatalogLoadingStateCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogLoadingStateCopyWith(CatalogLoadingState value, $Res Function(CatalogLoadingState) _then) = _$CatalogLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 CatalogVM data
});


@override $CatalogVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogLoadingStateCopyWithImpl<$Res>
    implements $CatalogLoadingStateCopyWith<$Res> {
  _$CatalogLoadingStateCopyWithImpl(this._self, this._then);

  final CatalogLoadingState _self;
  final $Res Function(CatalogLoadingState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CatalogLoadingState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CatalogVM,
  ));
}

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<$Res> get data {
  
  return $CatalogVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CatalogLoadedState implements CatalogState {
  const CatalogLoadedState({required this.data});
  

@override final  CatalogVM data;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogLoadedStateCopyWith<CatalogLoadedState> get copyWith => _$CatalogLoadedStateCopyWithImpl<CatalogLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogLoadedState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'CatalogState.loaded(data: $data)';
}


}

/// @nodoc
abstract mixin class $CatalogLoadedStateCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogLoadedStateCopyWith(CatalogLoadedState value, $Res Function(CatalogLoadedState) _then) = _$CatalogLoadedStateCopyWithImpl;
@override @useResult
$Res call({
 CatalogVM data
});


@override $CatalogVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogLoadedStateCopyWithImpl<$Res>
    implements $CatalogLoadedStateCopyWith<$Res> {
  _$CatalogLoadedStateCopyWithImpl(this._self, this._then);

  final CatalogLoadedState _self;
  final $Res Function(CatalogLoadedState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(CatalogLoadedState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CatalogVM,
  ));
}

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<$Res> get data {
  
  return $CatalogVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class CatalogErrorState implements CatalogState, BlocErrorStateInterface {
  const CatalogErrorState({required this.data, required this.exception});
  

@override final  CatalogVM data;
 final  Exception exception;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogErrorStateCopyWith<CatalogErrorState> get copyWith => _$CatalogErrorStateCopyWithImpl<CatalogErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogErrorState&&(identical(other.data, data) || other.data == data)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data,exception);
}

@override
String toString() {
    return 'CatalogState.error(data: $data, exception: $exception)';
}


}

/// @nodoc
abstract mixin class $CatalogErrorStateCopyWith<$Res> implements $CatalogStateCopyWith<$Res> {
  factory $CatalogErrorStateCopyWith(CatalogErrorState value, $Res Function(CatalogErrorState) _then) = _$CatalogErrorStateCopyWithImpl;
@override @useResult
$Res call({
 CatalogVM data, Exception exception
});


@override $CatalogVMCopyWith<$Res> get data;

}
/// @nodoc
class _$CatalogErrorStateCopyWithImpl<$Res>
    implements $CatalogErrorStateCopyWith<$Res> {
  _$CatalogErrorStateCopyWithImpl(this._self, this._then);

  final CatalogErrorState _self;
  final $Res Function(CatalogErrorState) _then;

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? exception = null,}) {
  return _then(CatalogErrorState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as CatalogVM,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}

/// Create a copy of CatalogState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogVMCopyWith<$Res> get data {
  
  return $CatalogVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
