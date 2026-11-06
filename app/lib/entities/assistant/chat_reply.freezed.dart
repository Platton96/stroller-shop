// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatReply {

 String get conversationId; String get text; List<Stroller> get strollers; List<AssistantAction> get actions; List<AssistantSearch> get searches; List<String> get suggestions;
/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatReplyCopyWith<ChatReply> get copyWith => _$ChatReplyCopyWithImpl<ChatReply>(this as ChatReply, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChatReply;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatReply&&(identical(other.conversationId, _this.conversationId) || other.conversationId == _this.conversationId)&&(identical(other.text, _this.text) || other.text == _this.text)&&const DeepCollectionEquality().equals(other.strollers, _this.strollers)&&const DeepCollectionEquality().equals(other.actions, _this.actions)&&const DeepCollectionEquality().equals(other.searches, _this.searches)&&const DeepCollectionEquality().equals(other.suggestions, _this.suggestions));
}


@override
int get hashCode {
  final _this = this as ChatReply;
  return Object.hash(runtimeType,_this.conversationId,_this.text,const DeepCollectionEquality().hash(_this.strollers),const DeepCollectionEquality().hash(_this.actions),const DeepCollectionEquality().hash(_this.searches),const DeepCollectionEquality().hash(_this.suggestions));
}

@override
String toString() {
  final _this = this as ChatReply;
  return 'ChatReply(conversationId: ${_this.conversationId}, text: ${_this.text}, strollers: ${_this.strollers}, actions: ${_this.actions}, searches: ${_this.searches}, suggestions: ${_this.suggestions})';
}


}

/// @nodoc
abstract mixin class $ChatReplyCopyWith<$Res>  {
  factory $ChatReplyCopyWith(ChatReply value, $Res Function(ChatReply) _then) = _$ChatReplyCopyWithImpl;
@useResult
$Res call({
 String conversationId, String text, List<Stroller> strollers, List<AssistantAction> actions, List<AssistantSearch> searches, List<String> suggestions
});




}
/// @nodoc
class _$ChatReplyCopyWithImpl<$Res>
    implements $ChatReplyCopyWith<$Res> {
  _$ChatReplyCopyWithImpl(this._self, this._then);

  final ChatReply _self;
  final $Res Function(ChatReply) _then;

/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversationId = null,Object? text = null,Object? strollers = null,Object? actions = null,Object? searches = null,Object? suggestions = null,}) {
  return _then(ChatReply(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,strollers: null == strollers ? _self.strollers : strollers // ignore: cast_nullable_to_non_nullable
as List<Stroller>,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<AssistantAction>,searches: null == searches ? _self.searches : searches // ignore: cast_nullable_to_non_nullable
as List<AssistantSearch>,suggestions: null == suggestions ? _self.suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatReply].
extension ChatReplyPatterns on ChatReply {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatReply value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatReply value)  $default,){
final _that = this;
switch (_that) {
case _ChatReply():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatReply value)?  $default,){
final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String conversationId,  String text,  List<Stroller> strollers,  List<AssistantAction> actions,  List<AssistantSearch> searches,  List<String> suggestions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
return $default(_that.conversationId,_that.text,_that.strollers,_that.actions,_that.searches,_that.suggestions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String conversationId,  String text,  List<Stroller> strollers,  List<AssistantAction> actions,  List<AssistantSearch> searches,  List<String> suggestions)  $default,) {final _that = this;
switch (_that) {
case _ChatReply():
return $default(_that.conversationId,_that.text,_that.strollers,_that.actions,_that.searches,_that.suggestions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String conversationId,  String text,  List<Stroller> strollers,  List<AssistantAction> actions,  List<AssistantSearch> searches,  List<String> suggestions)?  $default,) {final _that = this;
switch (_that) {
case _ChatReply() when $default != null:
return $default(_that.conversationId,_that.text,_that.strollers,_that.actions,_that.searches,_that.suggestions);case _:
  return null;

}
}

}

/// @nodoc


class _ChatReply implements ChatReply {
  const _ChatReply({required this.conversationId, required this.text, required  List<Stroller> strollers, required  List<AssistantAction> actions, required  List<AssistantSearch> searches, required  List<String> suggestions}): _strollers = strollers,_actions = actions,_searches = searches,_suggestions = suggestions;
  

@override final  String conversationId;
@override final  String text;
 final  List<Stroller> _strollers;
@override List<Stroller> get strollers {
  if (_strollers is EqualUnmodifiableListView) return _strollers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_strollers);
}

 final  List<AssistantAction> _actions;
@override List<AssistantAction> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}

 final  List<AssistantSearch> _searches;
@override List<AssistantSearch> get searches {
  if (_searches is EqualUnmodifiableListView) return _searches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searches);
}

 final  List<String> _suggestions;
@override List<String> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatReplyCopyWith<_ChatReply> get copyWith => __$ChatReplyCopyWithImpl<_ChatReply>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatReply&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.strollers, _strollers)&&const DeepCollectionEquality().equals(other.actions, _actions)&&const DeepCollectionEquality().equals(other.searches, _searches)&&const DeepCollectionEquality().equals(other.suggestions, _suggestions));
}


@override
int get hashCode {
    return Object.hash(runtimeType,conversationId,text,const DeepCollectionEquality().hash(_strollers),const DeepCollectionEquality().hash(_actions),const DeepCollectionEquality().hash(_searches),const DeepCollectionEquality().hash(_suggestions));
}

@override
String toString() {
    return 'ChatReply(conversationId: $conversationId, text: $text, strollers: $strollers, actions: $actions, searches: $searches, suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class _$ChatReplyCopyWith<$Res> implements $ChatReplyCopyWith<$Res> {
  factory _$ChatReplyCopyWith(_ChatReply value, $Res Function(_ChatReply) _then) = __$ChatReplyCopyWithImpl;
@override @useResult
$Res call({
 String conversationId, String text, List<Stroller> strollers, List<AssistantAction> actions, List<AssistantSearch> searches, List<String> suggestions
});




}
/// @nodoc
class __$ChatReplyCopyWithImpl<$Res>
    implements _$ChatReplyCopyWith<$Res> {
  __$ChatReplyCopyWithImpl(this._self, this._then);

  final _ChatReply _self;
  final $Res Function(_ChatReply) _then;

/// Create a copy of ChatReply
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? text = null,Object? strollers = null,Object? actions = null,Object? searches = null,Object? suggestions = null,}) {
  return _then(_ChatReply(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,strollers: null == strollers ? _self._strollers : strollers // ignore: cast_nullable_to_non_nullable
as List<Stroller>,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<AssistantAction>,searches: null == searches ? _self._searches : searches // ignore: cast_nullable_to_non_nullable
as List<AssistantSearch>,suggestions: null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc
mixin _$AssistantSearch {

 String get summary; int get found;
/// Create a copy of AssistantSearch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantSearchCopyWith<AssistantSearch> get copyWith => _$AssistantSearchCopyWithImpl<AssistantSearch>(this as AssistantSearch, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AssistantSearch;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantSearch&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&(identical(other.found, _this.found) || other.found == _this.found));
}


@override
int get hashCode {
  final _this = this as AssistantSearch;
  return Object.hash(runtimeType,_this.summary,_this.found);
}

@override
String toString() {
  final _this = this as AssistantSearch;
  return 'AssistantSearch(summary: ${_this.summary}, found: ${_this.found})';
}


}

/// @nodoc
abstract mixin class $AssistantSearchCopyWith<$Res>  {
  factory $AssistantSearchCopyWith(AssistantSearch value, $Res Function(AssistantSearch) _then) = _$AssistantSearchCopyWithImpl;
@useResult
$Res call({
 String summary, int found
});




}
/// @nodoc
class _$AssistantSearchCopyWithImpl<$Res>
    implements $AssistantSearchCopyWith<$Res> {
  _$AssistantSearchCopyWithImpl(this._self, this._then);

  final AssistantSearch _self;
  final $Res Function(AssistantSearch) _then;

/// Create a copy of AssistantSearch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summary = null,Object? found = null,}) {
  return _then(AssistantSearch(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,found: null == found ? _self.found : found // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AssistantSearch].
extension AssistantSearchPatterns on AssistantSearch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssistantSearch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssistantSearch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssistantSearch value)  $default,){
final _that = this;
switch (_that) {
case _AssistantSearch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssistantSearch value)?  $default,){
final _that = this;
switch (_that) {
case _AssistantSearch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String summary,  int found)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssistantSearch() when $default != null:
return $default(_that.summary,_that.found);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String summary,  int found)  $default,) {final _that = this;
switch (_that) {
case _AssistantSearch():
return $default(_that.summary,_that.found);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String summary,  int found)?  $default,) {final _that = this;
switch (_that) {
case _AssistantSearch() when $default != null:
return $default(_that.summary,_that.found);case _:
  return null;

}
}

}

/// @nodoc


class _AssistantSearch implements AssistantSearch {
  const _AssistantSearch({required this.summary, required this.found});
  

@override final  String summary;
@override final  int found;

/// Create a copy of AssistantSearch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssistantSearchCopyWith<_AssistantSearch> get copyWith => __$AssistantSearchCopyWithImpl<_AssistantSearch>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssistantSearch&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.found, found) || other.found == found));
}


@override
int get hashCode {
    return Object.hash(runtimeType,summary,found);
}

@override
String toString() {
    return 'AssistantSearch(summary: $summary, found: $found)';
}


}

/// @nodoc
abstract mixin class _$AssistantSearchCopyWith<$Res> implements $AssistantSearchCopyWith<$Res> {
  factory _$AssistantSearchCopyWith(_AssistantSearch value, $Res Function(_AssistantSearch) _then) = __$AssistantSearchCopyWithImpl;
@override @useResult
$Res call({
 String summary, int found
});




}
/// @nodoc
class __$AssistantSearchCopyWithImpl<$Res>
    implements _$AssistantSearchCopyWith<$Res> {
  __$AssistantSearchCopyWithImpl(this._self, this._then);

  final _AssistantSearch _self;
  final $Res Function(_AssistantSearch) _then;

/// Create a copy of AssistantSearch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summary = null,Object? found = null,}) {
  return _then(_AssistantSearch(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,found: null == found ? _self.found : found // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
