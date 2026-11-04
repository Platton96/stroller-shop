// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sort_sheet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SortSheetEvent {

 StrollerSort get sort;
/// Create a copy of SortSheetEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortSheetEventCopyWith<SortSheetEvent> get copyWith => _$SortSheetEventCopyWithImpl<SortSheetEvent>(this as SortSheetEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SortSheetEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SortSheetEvent&&(identical(other.sort, _this.sort) || other.sort == _this.sort));
}


@override
int get hashCode {
  final _this = this as SortSheetEvent;
  return Object.hash(runtimeType,_this.sort);
}

@override
String toString() {
  final _this = this as SortSheetEvent;
  return 'SortSheetEvent(sort: ${_this.sort})';
}


}

/// @nodoc
abstract mixin class $SortSheetEventCopyWith<$Res>  {
  factory $SortSheetEventCopyWith(SortSheetEvent value, $Res Function(SortSheetEvent) _then) = _$SortSheetEventCopyWithImpl;
@useResult
$Res call({
 StrollerSort sort
});




}
/// @nodoc
class _$SortSheetEventCopyWithImpl<$Res>
    implements $SortSheetEventCopyWith<$Res> {
  _$SortSheetEventCopyWithImpl(this._self, this._then);

  final SortSheetEvent _self;
  final $Res Function(SortSheetEvent) _then;

/// Create a copy of SortSheetEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sort = null,}) {
  return _then(SortSheetEvent.sortSelected(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}

}


/// Adds pattern-matching-related methods to [SortSheetEvent].
extension SortSheetEventPatterns on SortSheetEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SortSelectedEvent value)?  sortSelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SortSelectedEvent() when sortSelected != null:
return sortSelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SortSelectedEvent value)  sortSelected,}){
final _that = this;
switch (_that) {
case _SortSelectedEvent():
return sortSelected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SortSelectedEvent value)?  sortSelected,}){
final _that = this;
switch (_that) {
case _SortSelectedEvent() when sortSelected != null:
return sortSelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StrollerSort sort)?  sortSelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SortSelectedEvent() when sortSelected != null:
return sortSelected(_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StrollerSort sort)  sortSelected,}) {final _that = this;
switch (_that) {
case _SortSelectedEvent():
return sortSelected(_that.sort);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StrollerSort sort)?  sortSelected,}) {final _that = this;
switch (_that) {
case _SortSelectedEvent() when sortSelected != null:
return sortSelected(_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _SortSelectedEvent implements SortSheetEvent {
  const _SortSelectedEvent({required this.sort});
  

@override final  StrollerSort sort;

/// Create a copy of SortSheetEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SortSelectedEventCopyWith<_SortSelectedEvent> get copyWith => __$SortSelectedEventCopyWithImpl<_SortSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SortSelectedEvent&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,sort);
}

@override
String toString() {
    return 'SortSheetEvent.sortSelected(sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$SortSelectedEventCopyWith<$Res> implements $SortSheetEventCopyWith<$Res> {
  factory _$SortSelectedEventCopyWith(_SortSelectedEvent value, $Res Function(_SortSelectedEvent) _then) = __$SortSelectedEventCopyWithImpl;
@override @useResult
$Res call({
 StrollerSort sort
});




}
/// @nodoc
class __$SortSelectedEventCopyWithImpl<$Res>
    implements _$SortSelectedEventCopyWith<$Res> {
  __$SortSelectedEventCopyWithImpl(this._self, this._then);

  final _SortSelectedEvent _self;
  final $Res Function(_SortSelectedEvent) _then;

/// Create a copy of SortSheetEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(_SortSelectedEvent(
sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}


}

/// @nodoc
mixin _$SortSheetState {

 StrollerSort get selectedSort;
/// Create a copy of SortSheetState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortSheetStateCopyWith<SortSheetState> get copyWith => _$SortSheetStateCopyWithImpl<SortSheetState>(this as SortSheetState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SortSheetState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SortSheetState&&(identical(other.selectedSort, _this.selectedSort) || other.selectedSort == _this.selectedSort));
}


@override
int get hashCode {
  final _this = this as SortSheetState;
  return Object.hash(runtimeType,_this.selectedSort);
}

@override
String toString() {
  final _this = this as SortSheetState;
  return 'SortSheetState(selectedSort: ${_this.selectedSort})';
}


}

/// @nodoc
abstract mixin class $SortSheetStateCopyWith<$Res>  {
  factory $SortSheetStateCopyWith(SortSheetState value, $Res Function(SortSheetState) _then) = _$SortSheetStateCopyWithImpl;
@useResult
$Res call({
 StrollerSort selectedSort
});




}
/// @nodoc
class _$SortSheetStateCopyWithImpl<$Res>
    implements $SortSheetStateCopyWith<$Res> {
  _$SortSheetStateCopyWithImpl(this._self, this._then);

  final SortSheetState _self;
  final $Res Function(SortSheetState) _then;

/// Create a copy of SortSheetState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedSort = null,}) {
  return _then(SortSheetState.initial(
selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}

}


/// Adds pattern-matching-related methods to [SortSheetState].
extension SortSheetStatePatterns on SortSheetState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SortSheetInitialState value)?  initial,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SortSheetInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SortSheetInitialState value)  initial,}){
final _that = this;
switch (_that) {
case SortSheetInitialState():
return initial(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SortSheetInitialState value)?  initial,}){
final _that = this;
switch (_that) {
case SortSheetInitialState() when initial != null:
return initial(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( StrollerSort selectedSort)?  initial,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SortSheetInitialState() when initial != null:
return initial(_that.selectedSort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( StrollerSort selectedSort)  initial,}) {final _that = this;
switch (_that) {
case SortSheetInitialState():
return initial(_that.selectedSort);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( StrollerSort selectedSort)?  initial,}) {final _that = this;
switch (_that) {
case SortSheetInitialState() when initial != null:
return initial(_that.selectedSort);case _:
  return null;

}
}

}

/// @nodoc


class SortSheetInitialState implements SortSheetState {
  const SortSheetInitialState({required this.selectedSort});
  

@override final  StrollerSort selectedSort;

/// Create a copy of SortSheetState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortSheetInitialStateCopyWith<SortSheetInitialState> get copyWith => _$SortSheetInitialStateCopyWithImpl<SortSheetInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SortSheetInitialState&&(identical(other.selectedSort, selectedSort) || other.selectedSort == selectedSort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,selectedSort);
}

@override
String toString() {
    return 'SortSheetState.initial(selectedSort: $selectedSort)';
}


}

/// @nodoc
abstract mixin class $SortSheetInitialStateCopyWith<$Res> implements $SortSheetStateCopyWith<$Res> {
  factory $SortSheetInitialStateCopyWith(SortSheetInitialState value, $Res Function(SortSheetInitialState) _then) = _$SortSheetInitialStateCopyWithImpl;
@override @useResult
$Res call({
 StrollerSort selectedSort
});




}
/// @nodoc
class _$SortSheetInitialStateCopyWithImpl<$Res>
    implements $SortSheetInitialStateCopyWith<$Res> {
  _$SortSheetInitialStateCopyWithImpl(this._self, this._then);

  final SortSheetInitialState _self;
  final $Res Function(SortSheetInitialState) _then;

/// Create a copy of SortSheetState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedSort = null,}) {
  return _then(SortSheetInitialState(
selectedSort: null == selectedSort ? _self.selectedSort : selectedSort // ignore: cast_nullable_to_non_nullable
as StrollerSort,
  ));
}


}

// dart format on
