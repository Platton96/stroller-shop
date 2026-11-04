// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppException {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppException()';
}


}

/// @nodoc
class $AppExceptionCopyWith<$Res>  {
$AppExceptionCopyWith(AppException _, $Res Function(AppException) __);
}


/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NoConnectionException value)?  noConnection,TResult Function( ServerException value)?  server,TResult Function( NotFoundException value)?  notFound,TResult Function( UnavailableException value)?  unavailable,TResult Function( UnexpectedException value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NoConnectionException() when noConnection != null:
return noConnection(_that);case ServerException() when server != null:
return server(_that);case NotFoundException() when notFound != null:
return notFound(_that);case UnavailableException() when unavailable != null:
return unavailable(_that);case UnexpectedException() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NoConnectionException value)  noConnection,required TResult Function( ServerException value)  server,required TResult Function( NotFoundException value)  notFound,required TResult Function( UnavailableException value)  unavailable,required TResult Function( UnexpectedException value)  unexpected,}){
final _that = this;
switch (_that) {
case NoConnectionException():
return noConnection(_that);case ServerException():
return server(_that);case NotFoundException():
return notFound(_that);case UnavailableException():
return unavailable(_that);case UnexpectedException():
return unexpected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NoConnectionException value)?  noConnection,TResult? Function( ServerException value)?  server,TResult? Function( NotFoundException value)?  notFound,TResult? Function( UnavailableException value)?  unavailable,TResult? Function( UnexpectedException value)?  unexpected,}){
final _that = this;
switch (_that) {
case NoConnectionException() when noConnection != null:
return noConnection(_that);case ServerException() when server != null:
return server(_that);case NotFoundException() when notFound != null:
return notFound(_that);case UnavailableException() when unavailable != null:
return unavailable(_that);case UnexpectedException() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  noConnection,TResult Function( int statusCode,  String message)?  server,TResult Function()?  notFound,TResult Function()?  unavailable,TResult Function( String message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NoConnectionException() when noConnection != null:
return noConnection();case ServerException() when server != null:
return server(_that.statusCode,_that.message);case NotFoundException() when notFound != null:
return notFound();case UnavailableException() when unavailable != null:
return unavailable();case UnexpectedException() when unexpected != null:
return unexpected(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  noConnection,required TResult Function( int statusCode,  String message)  server,required TResult Function()  notFound,required TResult Function()  unavailable,required TResult Function( String message)  unexpected,}) {final _that = this;
switch (_that) {
case NoConnectionException():
return noConnection();case ServerException():
return server(_that.statusCode,_that.message);case NotFoundException():
return notFound();case UnavailableException():
return unavailable();case UnexpectedException():
return unexpected(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  noConnection,TResult? Function( int statusCode,  String message)?  server,TResult? Function()?  notFound,TResult? Function()?  unavailable,TResult? Function( String message)?  unexpected,}) {final _that = this;
switch (_that) {
case NoConnectionException() when noConnection != null:
return noConnection();case ServerException() when server != null:
return server(_that.statusCode,_that.message);case NotFoundException() when notFound != null:
return notFound();case UnavailableException() when unavailable != null:
return unavailable();case UnexpectedException() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class NoConnectionException implements AppException, DomainIgnoreFromCrashReporting {
  const NoConnectionException();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NoConnectionException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppException.noConnection()';
}


}




/// @nodoc


class ServerException implements AppException {
  const ServerException({required this.statusCode, required this.message});
  

 final  int statusCode;
 final  String message;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerExceptionCopyWith<ServerException> get copyWith => _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerException&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,statusCode,message);
}

@override
String toString() {
    return 'AppException.server(statusCode: $statusCode, message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(ServerException value, $Res Function(ServerException) _then) = _$ServerExceptionCopyWithImpl;
@useResult
$Res call({
 int statusCode, String message
});




}
/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._self, this._then);

  final ServerException _self;
  final $Res Function(ServerException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? statusCode = null,Object? message = null,}) {
  return _then(ServerException(
statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotFoundException implements AppException, DomainIgnoreFromCrashReporting {
  const NotFoundException();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppException.notFound()';
}


}




/// @nodoc


class UnavailableException implements AppException, DomainIgnoreFromCrashReporting {
  const UnavailableException();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UnavailableException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppException.unavailable()';
}


}




/// @nodoc


class UnexpectedException implements AppException {
  const UnexpectedException(this.message);
  

 final  String message;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedExceptionCopyWith<UnexpectedException> get copyWith => _$UnexpectedExceptionCopyWithImpl<UnexpectedException>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'AppException.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnexpectedExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $UnexpectedExceptionCopyWith(UnexpectedException value, $Res Function(UnexpectedException) _then) = _$UnexpectedExceptionCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UnexpectedExceptionCopyWithImpl<$Res>
    implements $UnexpectedExceptionCopyWith<$Res> {
  _$UnexpectedExceptionCopyWithImpl(this._self, this._then);

  final UnexpectedException _self;
  final $Res Function(UnexpectedException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(UnexpectedException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
