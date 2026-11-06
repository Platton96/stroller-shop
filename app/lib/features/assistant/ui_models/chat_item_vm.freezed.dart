// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_item_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatItemVM {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatItemVM);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatItemVM()';
}


}

/// @nodoc
class $ChatItemVMCopyWith<$Res>  {
$ChatItemVMCopyWith(ChatItemVM _, $Res Function(ChatItemVM) __);
}


/// Adds pattern-matching-related methods to [ChatItemVM].
extension ChatItemVMPatterns on ChatItemVM {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GreetingChatItemVM value)?  greeting,TResult Function( UserMessageChatItemVM value)?  userMessage,TResult Function( AssistantMessageChatItemVM value)?  assistantMessage,TResult Function( SearchNoteChatItemVM value)?  searchNote,TResult Function( StrollerCardsChatItemVM value)?  strollerCards,TResult Function( CartAddedChatItemVM value)?  cartAdded,TResult Function( TypingChatItemVM value)?  typing,TResult Function( ErrorChatItemVM value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GreetingChatItemVM() when greeting != null:
return greeting(_that);case UserMessageChatItemVM() when userMessage != null:
return userMessage(_that);case AssistantMessageChatItemVM() when assistantMessage != null:
return assistantMessage(_that);case SearchNoteChatItemVM() when searchNote != null:
return searchNote(_that);case StrollerCardsChatItemVM() when strollerCards != null:
return strollerCards(_that);case CartAddedChatItemVM() when cartAdded != null:
return cartAdded(_that);case TypingChatItemVM() when typing != null:
return typing(_that);case ErrorChatItemVM() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GreetingChatItemVM value)  greeting,required TResult Function( UserMessageChatItemVM value)  userMessage,required TResult Function( AssistantMessageChatItemVM value)  assistantMessage,required TResult Function( SearchNoteChatItemVM value)  searchNote,required TResult Function( StrollerCardsChatItemVM value)  strollerCards,required TResult Function( CartAddedChatItemVM value)  cartAdded,required TResult Function( TypingChatItemVM value)  typing,required TResult Function( ErrorChatItemVM value)  error,}){
final _that = this;
switch (_that) {
case GreetingChatItemVM():
return greeting(_that);case UserMessageChatItemVM():
return userMessage(_that);case AssistantMessageChatItemVM():
return assistantMessage(_that);case SearchNoteChatItemVM():
return searchNote(_that);case StrollerCardsChatItemVM():
return strollerCards(_that);case CartAddedChatItemVM():
return cartAdded(_that);case TypingChatItemVM():
return typing(_that);case ErrorChatItemVM():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GreetingChatItemVM value)?  greeting,TResult? Function( UserMessageChatItemVM value)?  userMessage,TResult? Function( AssistantMessageChatItemVM value)?  assistantMessage,TResult? Function( SearchNoteChatItemVM value)?  searchNote,TResult? Function( StrollerCardsChatItemVM value)?  strollerCards,TResult? Function( CartAddedChatItemVM value)?  cartAdded,TResult? Function( TypingChatItemVM value)?  typing,TResult? Function( ErrorChatItemVM value)?  error,}){
final _that = this;
switch (_that) {
case GreetingChatItemVM() when greeting != null:
return greeting(_that);case UserMessageChatItemVM() when userMessage != null:
return userMessage(_that);case AssistantMessageChatItemVM() when assistantMessage != null:
return assistantMessage(_that);case SearchNoteChatItemVM() when searchNote != null:
return searchNote(_that);case StrollerCardsChatItemVM() when strollerCards != null:
return strollerCards(_that);case CartAddedChatItemVM() when cartAdded != null:
return cartAdded(_that);case TypingChatItemVM() when typing != null:
return typing(_that);case ErrorChatItemVM() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  greeting,TResult Function( String text)?  userMessage,TResult Function( String text)?  assistantMessage,TResult Function( String summary)?  searchNote,TResult Function( List<StrollerCardVM> cards)?  strollerCards,TResult Function( String name,  String color,  int priceByn,  bool isPriceApproximate)?  cartAdded,TResult Function()?  typing,TResult Function( Exception exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GreetingChatItemVM() when greeting != null:
return greeting();case UserMessageChatItemVM() when userMessage != null:
return userMessage(_that.text);case AssistantMessageChatItemVM() when assistantMessage != null:
return assistantMessage(_that.text);case SearchNoteChatItemVM() when searchNote != null:
return searchNote(_that.summary);case StrollerCardsChatItemVM() when strollerCards != null:
return strollerCards(_that.cards);case CartAddedChatItemVM() when cartAdded != null:
return cartAdded(_that.name,_that.color,_that.priceByn,_that.isPriceApproximate);case TypingChatItemVM() when typing != null:
return typing();case ErrorChatItemVM() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  greeting,required TResult Function( String text)  userMessage,required TResult Function( String text)  assistantMessage,required TResult Function( String summary)  searchNote,required TResult Function( List<StrollerCardVM> cards)  strollerCards,required TResult Function( String name,  String color,  int priceByn,  bool isPriceApproximate)  cartAdded,required TResult Function()  typing,required TResult Function( Exception exception)  error,}) {final _that = this;
switch (_that) {
case GreetingChatItemVM():
return greeting();case UserMessageChatItemVM():
return userMessage(_that.text);case AssistantMessageChatItemVM():
return assistantMessage(_that.text);case SearchNoteChatItemVM():
return searchNote(_that.summary);case StrollerCardsChatItemVM():
return strollerCards(_that.cards);case CartAddedChatItemVM():
return cartAdded(_that.name,_that.color,_that.priceByn,_that.isPriceApproximate);case TypingChatItemVM():
return typing();case ErrorChatItemVM():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  greeting,TResult? Function( String text)?  userMessage,TResult? Function( String text)?  assistantMessage,TResult? Function( String summary)?  searchNote,TResult? Function( List<StrollerCardVM> cards)?  strollerCards,TResult? Function( String name,  String color,  int priceByn,  bool isPriceApproximate)?  cartAdded,TResult? Function()?  typing,TResult? Function( Exception exception)?  error,}) {final _that = this;
switch (_that) {
case GreetingChatItemVM() when greeting != null:
return greeting();case UserMessageChatItemVM() when userMessage != null:
return userMessage(_that.text);case AssistantMessageChatItemVM() when assistantMessage != null:
return assistantMessage(_that.text);case SearchNoteChatItemVM() when searchNote != null:
return searchNote(_that.summary);case StrollerCardsChatItemVM() when strollerCards != null:
return strollerCards(_that.cards);case CartAddedChatItemVM() when cartAdded != null:
return cartAdded(_that.name,_that.color,_that.priceByn,_that.isPriceApproximate);case TypingChatItemVM() when typing != null:
return typing();case ErrorChatItemVM() when error != null:
return error(_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class GreetingChatItemVM implements ChatItemVM {
  const GreetingChatItemVM();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GreetingChatItemVM);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatItemVM.greeting()';
}


}




/// @nodoc


class UserMessageChatItemVM implements ChatItemVM {
  const UserMessageChatItemVM({required this.text});
  

 final  String text;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserMessageChatItemVMCopyWith<UserMessageChatItemVM> get copyWith => _$UserMessageChatItemVMCopyWithImpl<UserMessageChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UserMessageChatItemVM&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'ChatItemVM.userMessage(text: $text)';
}


}

/// @nodoc
abstract mixin class $UserMessageChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $UserMessageChatItemVMCopyWith(UserMessageChatItemVM value, $Res Function(UserMessageChatItemVM) _then) = _$UserMessageChatItemVMCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$UserMessageChatItemVMCopyWithImpl<$Res>
    implements $UserMessageChatItemVMCopyWith<$Res> {
  _$UserMessageChatItemVMCopyWithImpl(this._self, this._then);

  final UserMessageChatItemVM _self;
  final $Res Function(UserMessageChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(UserMessageChatItemVM(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AssistantMessageChatItemVM implements ChatItemVM {
  const AssistantMessageChatItemVM({required this.text});
  

 final  String text;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssistantMessageChatItemVMCopyWith<AssistantMessageChatItemVM> get copyWith => _$AssistantMessageChatItemVMCopyWithImpl<AssistantMessageChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AssistantMessageChatItemVM&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text);
}

@override
String toString() {
    return 'ChatItemVM.assistantMessage(text: $text)';
}


}

/// @nodoc
abstract mixin class $AssistantMessageChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $AssistantMessageChatItemVMCopyWith(AssistantMessageChatItemVM value, $Res Function(AssistantMessageChatItemVM) _then) = _$AssistantMessageChatItemVMCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$AssistantMessageChatItemVMCopyWithImpl<$Res>
    implements $AssistantMessageChatItemVMCopyWith<$Res> {
  _$AssistantMessageChatItemVMCopyWithImpl(this._self, this._then);

  final AssistantMessageChatItemVM _self;
  final $Res Function(AssistantMessageChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(AssistantMessageChatItemVM(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchNoteChatItemVM implements ChatItemVM {
  const SearchNoteChatItemVM({required this.summary});
  

 final  String summary;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchNoteChatItemVMCopyWith<SearchNoteChatItemVM> get copyWith => _$SearchNoteChatItemVMCopyWithImpl<SearchNoteChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchNoteChatItemVM&&(identical(other.summary, summary) || other.summary == summary));
}


@override
int get hashCode {
    return Object.hash(runtimeType,summary);
}

@override
String toString() {
    return 'ChatItemVM.searchNote(summary: $summary)';
}


}

/// @nodoc
abstract mixin class $SearchNoteChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $SearchNoteChatItemVMCopyWith(SearchNoteChatItemVM value, $Res Function(SearchNoteChatItemVM) _then) = _$SearchNoteChatItemVMCopyWithImpl;
@useResult
$Res call({
 String summary
});




}
/// @nodoc
class _$SearchNoteChatItemVMCopyWithImpl<$Res>
    implements $SearchNoteChatItemVMCopyWith<$Res> {
  _$SearchNoteChatItemVMCopyWithImpl(this._self, this._then);

  final SearchNoteChatItemVM _self;
  final $Res Function(SearchNoteChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? summary = null,}) {
  return _then(SearchNoteChatItemVM(
summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StrollerCardsChatItemVM implements ChatItemVM {
  const StrollerCardsChatItemVM({required  List<StrollerCardVM> cards}): _cards = cards;
  

 final  List<StrollerCardVM> _cards;
 List<StrollerCardVM> get cards {
  if (_cards is EqualUnmodifiableListView) return _cards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cards);
}


/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StrollerCardsChatItemVMCopyWith<StrollerCardsChatItemVM> get copyWith => _$StrollerCardsChatItemVMCopyWithImpl<StrollerCardsChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is StrollerCardsChatItemVM&&const DeepCollectionEquality().equals(other.cards, _cards));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_cards));
}

@override
String toString() {
    return 'ChatItemVM.strollerCards(cards: $cards)';
}


}

/// @nodoc
abstract mixin class $StrollerCardsChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $StrollerCardsChatItemVMCopyWith(StrollerCardsChatItemVM value, $Res Function(StrollerCardsChatItemVM) _then) = _$StrollerCardsChatItemVMCopyWithImpl;
@useResult
$Res call({
 List<StrollerCardVM> cards
});




}
/// @nodoc
class _$StrollerCardsChatItemVMCopyWithImpl<$Res>
    implements $StrollerCardsChatItemVMCopyWith<$Res> {
  _$StrollerCardsChatItemVMCopyWithImpl(this._self, this._then);

  final StrollerCardsChatItemVM _self;
  final $Res Function(StrollerCardsChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cards = null,}) {
  return _then(StrollerCardsChatItemVM(
cards: null == cards ? _self._cards : cards // ignore: cast_nullable_to_non_nullable
as List<StrollerCardVM>,
  ));
}


}

/// @nodoc


class CartAddedChatItemVM implements ChatItemVM {
  const CartAddedChatItemVM({required this.name, required this.color, required this.priceByn, required this.isPriceApproximate});
  

 final  String name;
 final  String color;
 final  int priceByn;
 final  bool isPriceApproximate;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartAddedChatItemVMCopyWith<CartAddedChatItemVM> get copyWith => _$CartAddedChatItemVMCopyWithImpl<CartAddedChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CartAddedChatItemVM&&(identical(other.name, name) || other.name == name)&&(identical(other.color, color) || other.color == color)&&(identical(other.priceByn, priceByn) || other.priceByn == priceByn)&&(identical(other.isPriceApproximate, isPriceApproximate) || other.isPriceApproximate == isPriceApproximate));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,color,priceByn,isPriceApproximate);
}

@override
String toString() {
    return 'ChatItemVM.cartAdded(name: $name, color: $color, priceByn: $priceByn, isPriceApproximate: $isPriceApproximate)';
}


}

/// @nodoc
abstract mixin class $CartAddedChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $CartAddedChatItemVMCopyWith(CartAddedChatItemVM value, $Res Function(CartAddedChatItemVM) _then) = _$CartAddedChatItemVMCopyWithImpl;
@useResult
$Res call({
 String name, String color, int priceByn, bool isPriceApproximate
});




}
/// @nodoc
class _$CartAddedChatItemVMCopyWithImpl<$Res>
    implements $CartAddedChatItemVMCopyWith<$Res> {
  _$CartAddedChatItemVMCopyWithImpl(this._self, this._then);

  final CartAddedChatItemVM _self;
  final $Res Function(CartAddedChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? color = null,Object? priceByn = null,Object? isPriceApproximate = null,}) {
  return _then(CartAddedChatItemVM(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,priceByn: null == priceByn ? _self.priceByn : priceByn // ignore: cast_nullable_to_non_nullable
as int,isPriceApproximate: null == isPriceApproximate ? _self.isPriceApproximate : isPriceApproximate // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class TypingChatItemVM implements ChatItemVM {
  const TypingChatItemVM();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingChatItemVM);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatItemVM.typing()';
}


}




/// @nodoc


class ErrorChatItemVM implements ChatItemVM {
  const ErrorChatItemVM({required this.exception});
  

 final  Exception exception;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorChatItemVMCopyWith<ErrorChatItemVM> get copyWith => _$ErrorChatItemVMCopyWithImpl<ErrorChatItemVM>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorChatItemVM&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode {
    return Object.hash(runtimeType,exception);
}

@override
String toString() {
    return 'ChatItemVM.error(exception: $exception)';
}


}

/// @nodoc
abstract mixin class $ErrorChatItemVMCopyWith<$Res> implements $ChatItemVMCopyWith<$Res> {
  factory $ErrorChatItemVMCopyWith(ErrorChatItemVM value, $Res Function(ErrorChatItemVM) _then) = _$ErrorChatItemVMCopyWithImpl;
@useResult
$Res call({
 Exception exception
});




}
/// @nodoc
class _$ErrorChatItemVMCopyWithImpl<$Res>
    implements $ErrorChatItemVMCopyWith<$Res> {
  _$ErrorChatItemVMCopyWithImpl(this._self, this._then);

  final ErrorChatItemVM _self;
  final $Res Function(ErrorChatItemVM) _then;

/// Create a copy of ChatItemVM
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = null,}) {
  return _then(ErrorChatItemVM(
exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
