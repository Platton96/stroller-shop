// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEntry {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEntry);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatEntry()';
}


}

/// @nodoc
class $ChatEntryCopyWith<$Res>  {
$ChatEntryCopyWith(ChatEntry _, $Res Function(ChatEntry) __);
}


/// Adds pattern-matching-related methods to [ChatEntry].
extension ChatEntryPatterns on ChatEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserMessageChatEntry value)?  userMessage,TResult Function( AssistantMessageChatEntry value)?  assistantMessage,TResult Function( SearchNoteChatEntry value)?  searchNote,TResult Function( StrollersChatEntry value)?  strollers,TResult Function( CartAddedChatEntry value)?  cartAdded,TResult Function( ErrorChatEntry value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserMessageChatEntry() when userMessage != null:
return userMessage(_that);case AssistantMessageChatEntry() when assistantMessage != null:
return assistantMessage(_that);case SearchNoteChatEntry() when searchNote != null:
return searchNote(_that);case StrollersChatEntry() when strollers != null:
return strollers(_that);case CartAddedChatEntry() when cartAdded != null:
return cartAdded(_that);case ErrorChatEntry() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserMessageChatEntry value)  userMessage,required TResult Function( AssistantMessageChatEntry value)  assistantMessage,required TResult Function( SearchNoteChatEntry value)  searchNote,required TResult Function( StrollersChatEntry value)  strollers,required TResult Function( CartAddedChatEntry value)  cartAdded,required TResult Function( ErrorChatEntry value)  error,}){
final _that = this;
switch (_that) {
case UserMessageChatEntry():
return userMessage(_that);case AssistantMessageChatEntry():
return assistantMessage(_that);case SearchNoteChatEntry():
return searchNote(_that);case StrollersChatEntry():
return strollers(_that);case CartAddedChatEntry():
return cartAdded(_that);case ErrorChatEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserMessageChatEntry value)?  userMessage,TResult? Function( AssistantMessageChatEntry value)?  assistantMessage,TResult? Function( SearchNoteChatEntry value)?  searchNote,TResult? Function( StrollersChatEntry value)?  strollers,TResult? Function( CartAddedChatEntry value)?  cartAdded,TResult? Function( ErrorChatEntry value)?  error,}){
final _that = this;
switch (_that) {
case UserMessageChatEntry() when userMessage != null:
return userMessage(_that);case AssistantMessageChatEntry() when assistantMessage != null:
return assistantMessage(_that);case SearchNoteChatEntry() when searchNote != null:
return searchNote(_that);case StrollersChatEntry() when strollers != null:
return strollers(_that);case CartAddedChatEntry() when cartAdded != null:
return cartAdded(_that);case ErrorChatEntry() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  userMessage,TResult Function( String text)?  assistantMessage,TResult Function( String summary)?  searchNote,TResult Function( List<Stroller> strollers)?  strollers,TResult Function( Stroller stroller,  String color)?  cartAdded,TResult Function( Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserMessageChatEntry() when userMessage != null:
return userMessage(_that.text);case AssistantMessageChatEntry() when assistantMessage != null:
return assistantMessage(_that.text);case SearchNoteChatEntry() when searchNote != null:
return searchNote(_that.summary);case StrollersChatEntry() when strollers != null:
return strollers(_that.strollers);case CartAddedChatEntry() when cartAdded != null:
return cartAdded(_that.stroller,_that.color);case ErrorChatEntry() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  userMessage,required TResult Function( String text)  assistantMessage,required TResult Function( String summary)  searchNote,required TResult Function( List<Stroller> strollers)  strollers,required TResult Function( Stroller stroller,  String color)  cartAdded,required TResult Function( Exception exception)  error,}) {final _that = this;
switch (_that) {
case UserMessageChatEntry():
return userMessage(_that.text);case AssistantMessageChatEntry():
return assistantMessage(_that.text);case SearchNoteChatEntry():
return searchNote(_that.summary);case StrollersChatEntry():
return strollers(_that.strollers);case CartAddedChatEntry():
return cartAdded(_that.stroller,_that.color);case ErrorChatEntry():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  userMessage,TResult? Function( String text)?  assistantMessage,TResult? Function( String summary)?  searchNote,TResult? Function( List<Stroller> strollers)?  strollers,TResult? Function( Stroller stroller,  String color)?  cartAdded,TResult? Function( Exception exception)?  error,}) {final _that = this;
switch (_that) {
case UserMessageChatEntry() when userMessage != null:
return userMessage(_that.text);case AssistantMessageChatEntry() when assistantMessage != null:
return assistantMessage(_that.text);case SearchNoteChatEntry() when searchNote != null:
return searchNote(_that.summary);case StrollersChatEntry() when strollers != null:
return strollers(_that.strollers);case CartAddedChatEntry() when cartAdded != null:
return cartAdded(_that.stroller,_that.color);case ErrorChatEntry() when error != null:
return error(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class UserMessageChatEntry implements ChatEntry {
  const UserMessageChatEntry({required this.text});
  

 final  String text;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMessageChatEntryCopyWith<UserMessageChatEntry> get copyWith => _$UserMessageChatEntryCopyWithImpl<UserMessageChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMessageChatEntry&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'ChatEntry.userMessage(text: $text)';
}


}

/// @nodoc
abstract mixin class $UserMessageChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $UserMessageChatEntryCopyWith(UserMessageChatEntry value, $Res Function(UserMessageChatEntry) _then) = _$UserMessageChatEntryCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UserMessageChatEntryCopyWithImpl<$Res>
    implements $UserMessageChatEntryCopyWith<$Res> {
  _$UserMessageChatEntryCopyWithImpl(this._self, this._then);

  final UserMessageChatEntry _self;
  final $Res Function(UserMessageChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UserMessageChatEntry(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AssistantMessageChatEntry implements ChatEntry {
  const AssistantMessageChatEntry({required this.text});
  

 final  String text;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantMessageChatEntryCopyWith<AssistantMessageChatEntry> get copyWith => _$AssistantMessageChatEntryCopyWithImpl<AssistantMessageChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantMessageChatEntry&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'ChatEntry.assistantMessage(text: $text)';
}


}

/// @nodoc
abstract mixin class $AssistantMessageChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $AssistantMessageChatEntryCopyWith(AssistantMessageChatEntry value, $Res Function(AssistantMessageChatEntry) _then) = _$AssistantMessageChatEntryCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$AssistantMessageChatEntryCopyWithImpl<$Res>
    implements $AssistantMessageChatEntryCopyWith<$Res> {
  _$AssistantMessageChatEntryCopyWithImpl(this._self, this._then);

  final AssistantMessageChatEntry _self;
  final $Res Function(AssistantMessageChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(AssistantMessageChatEntry(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchNoteChatEntry implements ChatEntry {
  const SearchNoteChatEntry({required this.summary});
  

 final  String summary;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchNoteChatEntryCopyWith<SearchNoteChatEntry> get copyWith => _$SearchNoteChatEntryCopyWithImpl<SearchNoteChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchNoteChatEntry&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode {
    return Object.hash(runtimeType,summary);
}

@override
String toString() {
    return 'ChatEntry.searchNote(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SearchNoteChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $SearchNoteChatEntryCopyWith(SearchNoteChatEntry value, $Res Function(SearchNoteChatEntry) _then) = _$SearchNoteChatEntryCopyWithImpl;
@useResult
$Res call({
 String summary
});




}
/// @nodoc
class _$SearchNoteChatEntryCopyWithImpl<$Res>
    implements $SearchNoteChatEntryCopyWith<$Res> {
  _$SearchNoteChatEntryCopyWithImpl(this._self, this._then);

  final SearchNoteChatEntry _self;
  final $Res Function(SearchNoteChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(SearchNoteChatEntry(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StrollersChatEntry implements ChatEntry {
  const StrollersChatEntry({required  List<Stroller> strollers}): _strollers = strollers;
  

 final  List<Stroller> _strollers;
 List<Stroller> get strollers {
  if (_strollers is EqualUnmodifiableListView) return _strollers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strollers);
}


/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollersChatEntryCopyWith<StrollersChatEntry> get copyWith => _$StrollersChatEntryCopyWithImpl<StrollersChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollersChatEntry&&const DeepCollectionEquality().equals(other.strollers, _strollers));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_strollers));
}

@override
String toString() {
    return 'ChatEntry.strollers(strollers: $strollers)';
}


}

/// @nodoc
abstract mixin class $StrollersChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $StrollersChatEntryCopyWith(StrollersChatEntry value, $Res Function(StrollersChatEntry) _then) = _$StrollersChatEntryCopyWithImpl;
@useResult
$Res call({
 List<Stroller> strollers
});




}
/// @nodoc
class _$StrollersChatEntryCopyWithImpl<$Res>
    implements $StrollersChatEntryCopyWith<$Res> {
  _$StrollersChatEntryCopyWithImpl(this._self, this._then);

  final StrollersChatEntry _self;
  final $Res Function(StrollersChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? strollers = null,}) {
  return _then(StrollersChatEntry(
strollers: null == strollers ? _self._strollers : strollers // ignore: cast_nullable_to_non_nullable
as List<Stroller>,
  ));
}


}

/// @nodoc


class CartAddedChatEntry implements ChatEntry {
  const CartAddedChatEntry({required this.stroller, required this.color});
  

 final  Stroller stroller;
 final  String color;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartAddedChatEntryCopyWith<CartAddedChatEntry> get copyWith => _$CartAddedChatEntryCopyWithImpl<CartAddedChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartAddedChatEntry&&(identical(other.stroller, stroller) || other.stroller == stroller)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode {
    return Object.hash(runtimeType,stroller,color);
}

@override
String toString() {
    return 'ChatEntry.cartAdded(stroller: $stroller, color: $color)';
}


}

/// @nodoc
abstract mixin class $CartAddedChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $CartAddedChatEntryCopyWith(CartAddedChatEntry value, $Res Function(CartAddedChatEntry) _then) = _$CartAddedChatEntryCopyWithImpl;
@useResult
$Res call({
 Stroller stroller, String color
});


$StrollerCopyWith<$Res> get stroller;

}
/// @nodoc
class _$CartAddedChatEntryCopyWithImpl<$Res>
    implements $CartAddedChatEntryCopyWith<$Res> {
  _$CartAddedChatEntryCopyWithImpl(this._self, this._then);

  final CartAddedChatEntry _self;
  final $Res Function(CartAddedChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stroller = null,Object? color = null,}) {
  return _then(CartAddedChatEntry(
stroller: null == stroller ? _self.stroller : stroller // ignore: cast_nullable_to_non_nullable
as Stroller,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ChatEntry
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


class ErrorChatEntry implements ChatEntry {
  const ErrorChatEntry({required this.exception});
  

 final  Exception exception;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorChatEntryCopyWith<ErrorChatEntry> get copyWith => _$ErrorChatEntryCopyWithImpl<ErrorChatEntry>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChatEntry&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,exception);
}

@override
String toString() {
    return 'ChatEntry.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ErrorChatEntryCopyWith<$Res> implements $ChatEntryCopyWith<$Res> {
  factory $ErrorChatEntryCopyWith(ErrorChatEntry value, $Res Function(ErrorChatEntry) _then) = _$ErrorChatEntryCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$ErrorChatEntryCopyWithImpl<$Res>
    implements $ErrorChatEntryCopyWith<$Res> {
  _$ErrorChatEntryCopyWithImpl(this._self, this._then);

  final ErrorChatEntry _self;
  final $Res Function(ErrorChatEntry) _then;

/// Create a copy of ChatEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(ErrorChatEntry(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
