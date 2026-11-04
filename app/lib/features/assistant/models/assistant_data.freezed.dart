// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AssistantData {

 List<ChatEntry> get entries; List<String> get suggestions; bool get isSending; int get cartCount;
/// Create a copy of AssistantData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantDataCopyWith<AssistantData> get copyWith => _$AssistantDataCopyWithImpl<AssistantData>(this as AssistantData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AssistantData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantData&&const DeepCollectionEquality().equals(other.entries, _this.entries)&&const DeepCollectionEquality().equals(other.suggestions, _this.suggestions)&&(identical(other.isSending, _this.isSending) || other.isSending == _this.isSending)&&(identical(other.cartCount, _this.cartCount) || other.cartCount == _this.cartCount));
}


@override
int get hashCode {
  final _this = this as AssistantData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.entries),const DeepCollectionEquality().hash(_this.suggestions),_this.isSending,_this.cartCount);
}

@override
String toString() {
  final _this = this as AssistantData;
  return 'AssistantData(entries: ${_this.entries}, suggestions: ${_this.suggestions}, isSending: ${_this.isSending}, cartCount: ${_this.cartCount})';
}


}

/// @nodoc
abstract mixin class $AssistantDataCopyWith<$Res>  {
  factory $AssistantDataCopyWith(AssistantData value, $Res Function(AssistantData) _then) = _$AssistantDataCopyWithImpl;
@useResult
$Res call({
 List<ChatEntry> entries, List<String> suggestions, bool isSending, int cartCount
});




}
/// @nodoc
class _$AssistantDataCopyWithImpl<$Res>
    implements $AssistantDataCopyWith<$Res> {
  _$AssistantDataCopyWithImpl(this._self, this._then);

  final AssistantData _self;
  final $Res Function(AssistantData) _then;

/// Create a copy of AssistantData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entries = null,Object? suggestions = null,Object? isSending = null,Object? cartCount = null,}) {
  return _then(AssistantData(
entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<ChatEntry>,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AssistantData].
extension AssistantDataPatterns on AssistantData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssistantData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssistantData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssistantData value)  $default,){
final _that = this;
switch (_that) {
case _AssistantData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssistantData value)?  $default,){
final _that = this;
switch (_that) {
case _AssistantData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatEntry> entries,  List<String> suggestions,  bool isSending,  int cartCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssistantData() when $default != null:
return $default(_that.entries,_that.suggestions,_that.isSending,_that.cartCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatEntry> entries,  List<String> suggestions,  bool isSending,  int cartCount)  $default,) {final _that = this;
switch (_that) {
case _AssistantData():
return $default(_that.entries,_that.suggestions,_that.isSending,_that.cartCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatEntry> entries,  List<String> suggestions,  bool isSending,  int cartCount)?  $default,) {final _that = this;
switch (_that) {
case _AssistantData() when $default != null:
return $default(_that.entries,_that.suggestions,_that.isSending,_that.cartCount);case _:
  return null;

}
}

}

/// @nodoc


class _AssistantData implements AssistantData {
  const _AssistantData({required  List<ChatEntry> entries, required  List<String> suggestions, required this.isSending, required this.cartCount}): _entries = entries,_suggestions = suggestions;
  

 final  List<ChatEntry> _entries;
@override List<ChatEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

 final  List<String> _suggestions;
@override List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}

@override final  bool isSending;
@override final  int cartCount;

/// Create a copy of AssistantData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssistantDataCopyWith<_AssistantData> get copyWith => __$AssistantDataCopyWithImpl<_AssistantData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantData&&const DeepCollectionEquality().equals(other.entries, _entries)&&const DeepCollectionEquality().equals(other.suggestions, _suggestions)&&(identical(other.isSending, isSending) || other.isSending == isSending)&&(identical(other.cartCount, cartCount) || other.cartCount == cartCount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_entries),const DeepCollectionEquality().hash(_suggestions),isSending,cartCount);
}

@override
String toString() {
    return 'AssistantData(entries: $entries, suggestions: $suggestions, isSending: $isSending, cartCount: $cartCount)';
}


}

/// @nodoc
abstract mixin class _$AssistantDataCopyWith<$Res> implements $AssistantDataCopyWith<$Res> {
  factory _$AssistantDataCopyWith(_AssistantData value, $Res Function(_AssistantData) _then) = __$AssistantDataCopyWithImpl;
@override @useResult
$Res call({
 List<ChatEntry> entries, List<String> suggestions, bool isSending, int cartCount
});




}
/// @nodoc
class __$AssistantDataCopyWithImpl<$Res>
    implements _$AssistantDataCopyWith<$Res> {
  __$AssistantDataCopyWithImpl(this._self, this._then);

  final _AssistantData _self;
  final $Res Function(_AssistantData) _then;

/// Create a copy of AssistantData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entries = null,Object? suggestions = null,Object? isSending = null,Object? cartCount = null,}) {
  return _then(_AssistantData(
entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<ChatEntry>,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,isSending: null == isSending ? _self.isSending : isSending // ignore: cast_nullable_to_non_nullable
as bool,cartCount: null == cartCount ? _self.cartCount : cartCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
