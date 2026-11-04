// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tabs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TabsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'TabsEvent()';
}


}

/// @nodoc
class $TabsEventCopyWith<$Res>  {
$TabsEventCopyWith(TabsEvent _, $Res Function(TabsEvent) __);
}


/// Adds pattern-matching-related methods to [TabsEvent].
extension TabsEventPatterns on TabsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TabSelectedEvent value)?  tabSelected,TResult Function( _CartCountChangedEvent value)?  cartCountChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabSelectedEvent() when tabSelected != null:
return tabSelected(_that);case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TabSelectedEvent value)  tabSelected,required TResult Function( _CartCountChangedEvent value)  cartCountChanged,}){
final _that = this;
switch (_that) {
case _TabSelectedEvent():
return tabSelected(_that);case _CartCountChangedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TabSelectedEvent value)?  tabSelected,TResult? Function( _CartCountChangedEvent value)?  cartCountChanged,}){
final _that = this;
switch (_that) {
case _TabSelectedEvent() when tabSelected != null:
return tabSelected(_that);case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppTab tab)?  tabSelected,TResult Function( int count)?  cartCountChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabSelectedEvent() when tabSelected != null:
return tabSelected(_that.tab);case _CartCountChangedEvent() when cartCountChanged != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppTab tab)  tabSelected,required TResult Function( int count)  cartCountChanged,}) {final _that = this;
switch (_that) {
case _TabSelectedEvent():
return tabSelected(_that.tab);case _CartCountChangedEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppTab tab)?  tabSelected,TResult? Function( int count)?  cartCountChanged,}) {final _that = this;
switch (_that) {
case _TabSelectedEvent() when tabSelected != null:
return tabSelected(_that.tab);case _CartCountChangedEvent() when cartCountChanged != null:
return cartCountChanged(_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _TabSelectedEvent implements TabsEvent {
  const _TabSelectedEvent({required this.tab});
  

 final  AppTab tab;

/// Create a copy of TabsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabSelectedEventCopyWith<_TabSelectedEvent> get copyWith => __$TabSelectedEventCopyWithImpl<_TabSelectedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabSelectedEvent&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tab);
}

@override
String toString() {
    return 'TabsEvent.tabSelected(tab: $tab)';
}


}

/// @nodoc
abstract mixin class _$TabSelectedEventCopyWith<$Res> implements $TabsEventCopyWith<$Res> {
  factory _$TabSelectedEventCopyWith(_TabSelectedEvent value, $Res Function(_TabSelectedEvent) _then) = __$TabSelectedEventCopyWithImpl;
@useResult
$Res call({
 AppTab tab
});




}
/// @nodoc
class __$TabSelectedEventCopyWithImpl<$Res>
    implements _$TabSelectedEventCopyWith<$Res> {
  __$TabSelectedEventCopyWithImpl(this._self, this._then);

  final _TabSelectedEvent _self;
  final $Res Function(_TabSelectedEvent) _then;

/// Create a copy of TabsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(_TabSelectedEvent(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as AppTab,
  ));
}


}

/// @nodoc


class _CartCountChangedEvent implements TabsEvent {
  const _CartCountChangedEvent({required this.count});
  

 final  int count;

/// Create a copy of TabsEvent
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
    return 'TabsEvent.cartCountChanged(count: $count)';
}


}

/// @nodoc
abstract mixin class _$CartCountChangedEventCopyWith<$Res> implements $TabsEventCopyWith<$Res> {
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

/// Create a copy of TabsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = null,}) {
  return _then(_CartCountChangedEvent(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$TabsState {

 TabsVM get data;
/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsStateCopyWith<TabsState> get copyWith => _$TabsStateCopyWithImpl<TabsState>(this as TabsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TabsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsState&&(identical(other.data, _this.data) || other.data == _this.data));
}


@override
int get hashCode {
  final _this = this as TabsState;
  return Object.hash(runtimeType,_this.data);
}

@override
String toString() {
  final _this = this as TabsState;
  return 'TabsState(data: ${_this.data})';
}


}

/// @nodoc
abstract mixin class $TabsStateCopyWith<$Res>  {
  factory $TabsStateCopyWith(TabsState value, $Res Function(TabsState) _then) = _$TabsStateCopyWithImpl;
@useResult
$Res call({
 TabsVM data
});


$TabsVMCopyWith<$Res> get data;

}
/// @nodoc
class _$TabsStateCopyWithImpl<$Res>
    implements $TabsStateCopyWith<$Res> {
  _$TabsStateCopyWithImpl(this._self, this._then);

  final TabsState _self;
  final $Res Function(TabsState) _then;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TabsVM,
  ));
}
/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TabsVMCopyWith<$Res> get data {
  
  return $TabsVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [TabsState].
extension TabsStatePatterns on TabsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TabsInitialState value)?  initial,TResult Function( TabsReadyState value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TabsInitialState() when initial != null:
return initial(_that);case TabsReadyState() when ready != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TabsInitialState value)  initial,required TResult Function( TabsReadyState value)  ready,}){
final _that = this;
switch (_that) {
case TabsInitialState():
return initial(_that);case TabsReadyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TabsInitialState value)?  initial,TResult? Function( TabsReadyState value)?  ready,}){
final _that = this;
switch (_that) {
case TabsInitialState() when initial != null:
return initial(_that);case TabsReadyState() when ready != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( TabsVM data)?  initial,TResult Function( TabsVM data)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TabsInitialState() when initial != null:
return initial(_that.data);case TabsReadyState() when ready != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( TabsVM data)  initial,required TResult Function( TabsVM data)  ready,}) {final _that = this;
switch (_that) {
case TabsInitialState():
return initial(_that.data);case TabsReadyState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( TabsVM data)?  initial,TResult? Function( TabsVM data)?  ready,}) {final _that = this;
switch (_that) {
case TabsInitialState() when initial != null:
return initial(_that.data);case TabsReadyState() when ready != null:
return ready(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class TabsInitialState implements TabsState {
  const TabsInitialState({required this.data});
  

@override final  TabsVM data;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsInitialStateCopyWith<TabsInitialState> get copyWith => _$TabsInitialStateCopyWithImpl<TabsInitialState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsInitialState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'TabsState.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class $TabsInitialStateCopyWith<$Res> implements $TabsStateCopyWith<$Res> {
  factory $TabsInitialStateCopyWith(TabsInitialState value, $Res Function(TabsInitialState) _then) = _$TabsInitialStateCopyWithImpl;
@override @useResult
$Res call({
 TabsVM data
});


@override $TabsVMCopyWith<$Res> get data;

}
/// @nodoc
class _$TabsInitialStateCopyWithImpl<$Res>
    implements $TabsInitialStateCopyWith<$Res> {
  _$TabsInitialStateCopyWithImpl(this._self, this._then);

  final TabsInitialState _self;
  final $Res Function(TabsInitialState) _then;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TabsInitialState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TabsVM,
  ));
}

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TabsVMCopyWith<$Res> get data {
  
  return $TabsVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class TabsReadyState implements TabsState {
  const TabsReadyState({required this.data});
  

@override final  TabsVM data;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsReadyStateCopyWith<TabsReadyState> get copyWith => _$TabsReadyStateCopyWithImpl<TabsReadyState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsReadyState&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode {
    return Object.hash(runtimeType,data);
}

@override
String toString() {
    return 'TabsState.ready(data: $data)';
}


}

/// @nodoc
abstract mixin class $TabsReadyStateCopyWith<$Res> implements $TabsStateCopyWith<$Res> {
  factory $TabsReadyStateCopyWith(TabsReadyState value, $Res Function(TabsReadyState) _then) = _$TabsReadyStateCopyWithImpl;
@override @useResult
$Res call({
 TabsVM data
});


@override $TabsVMCopyWith<$Res> get data;

}
/// @nodoc
class _$TabsReadyStateCopyWithImpl<$Res>
    implements $TabsReadyStateCopyWith<$Res> {
  _$TabsReadyStateCopyWithImpl(this._self, this._then);

  final TabsReadyState _self;
  final $Res Function(TabsReadyState) _then;

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TabsReadyState(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TabsVM,
  ));
}

/// Create a copy of TabsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TabsVMCopyWith<$Res> get data {
  
  return $TabsVMCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc
mixin _$TabsVM {

 AppTab get selectedTab; int get cartCount;
/// Create a copy of TabsVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabsVMCopyWith<TabsVM> get copyWith => _$TabsVMCopyWithImpl<TabsVM>(this as TabsVM, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as TabsVM;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabsVM&&(identical(other.selectedTab, _this.selectedTab) || other.selectedTab == _this.selectedTab)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount));
}


@override
int get hashCode {
  final _this = this as TabsVM;
  return Object.hash(runtimeType,_this.selectedTab,_this.cartCount);
}

@override
String toString() {
  final _this = this as TabsVM;
  return 'TabsVM(selectedTab: ${_this.selectedTab}, cartCount: ${_this.cartCount})';
}


}

/// @nodoc
abstract mixin class $TabsVMCopyWith<$Res>  {
  factory $TabsVMCopyWith(TabsVM value, $Res Function(TabsVM) _then) = _$TabsVMCopyWithImpl;
@useResult
$Res call({
 AppTab selectedTab, int cartCount
});




}
/// @nodoc
class _$TabsVMCopyWithImpl<$Res>
    implements $TabsVMCopyWith<$Res> {
  _$TabsVMCopyWithImpl(this._self, this._then);

  final TabsVM _self;
  final $Res Function(TabsVM) _then;

/// Create a copy of TabsVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedTab = null,Object? cartCount = null,}) {
  return _then(TabsVM(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as AppTab,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TabsVM].
extension TabsVMPatterns on TabsVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TabsVM value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TabsVM() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TabsVM value)  $default,){
final _that = this;
switch (_that) {
case _TabsVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TabsVM value)?  $default,){
final _that = this;
switch (_that) {
case _TabsVM() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AppTab selectedTab,  int cartCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TabsVM() when $default != null:
return $default(_that.selectedTab,_that.cartCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AppTab selectedTab,  int cartCount)  $default,) {final _that = this;
switch (_that) {
case _TabsVM():
return $default(_that.selectedTab,_that.cartCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AppTab selectedTab,  int cartCount)?  $default,) {final _that = this;
switch (_that) {
case _TabsVM() when $default != null:
return $default(_that.selectedTab,_that.cartCount);case _:
  return null;

}
}

}

/// @nodoc


class _TabsVM implements TabsVM {
  const _TabsVM({required this.selectedTab, required this.cartCount});
  

@override final  AppTab selectedTab;
@override final  int cartCount;

/// Create a copy of TabsVM
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabsVMCopyWith<_TabsVM> get copyWith => __$TabsVMCopyWithImpl<_TabsVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabsVM&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,selectedTab,cartCount);
}

@override
String toString() {
    return 'TabsVM(selectedTab: $selectedTab, cartCount: $cartCount)';
}


}

/// @nodoc
abstract mixin class _$TabsVMCopyWith<$Res> implements $TabsVMCopyWith<$Res> {
  factory _$TabsVMCopyWith(_TabsVM value, $Res Function(_TabsVM) _then) = __$TabsVMCopyWithImpl;
@override @useResult
$Res call({
 AppTab selectedTab, int cartCount
});




}
/// @nodoc
class __$TabsVMCopyWithImpl<$Res>
    implements _$TabsVMCopyWith<$Res> {
  __$TabsVMCopyWithImpl(this._self, this._then);

  final _TabsVM _self;
  final $Res Function(_TabsVM) _then;

/// Create a copy of TabsVM
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedTab = null,Object? cartCount = null,}) {
  return _then(_TabsVM(
selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as AppTab,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
