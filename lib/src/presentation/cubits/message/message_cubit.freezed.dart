// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState()';
}


}

/// @nodoc
class $MessageStateCopyWith<$Res>  {
$MessageStateCopyWith(MessageState _, $Res Function(MessageState) __);
}


/// Adds pattern-matching-related methods to [MessageState].
extension MessageStatePatterns on MessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Laoding value)?  loading,TResult Function( _Failed value)?  failed,TResult Function( _Loaded value)?  loaded,TResult Function( _Started value)?  started,TResult Function( _Sent value)?  sent,TResult Function( _Stopped value)?  stopped,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Laoding() when loading != null:
return loading(_that);case _Failed() when failed != null:
return failed(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Started() when started != null:
return started(_that);case _Sent() when sent != null:
return sent(_that);case _Stopped() when stopped != null:
return stopped(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Laoding value)  loading,required TResult Function( _Failed value)  failed,required TResult Function( _Loaded value)  loaded,required TResult Function( _Started value)  started,required TResult Function( _Sent value)  sent,required TResult Function( _Stopped value)  stopped,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Laoding():
return loading(_that);case _Failed():
return failed(_that);case _Loaded():
return loaded(_that);case _Started():
return started(_that);case _Sent():
return sent(_that);case _Stopped():
return stopped(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Laoding value)?  loading,TResult? Function( _Failed value)?  failed,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Started value)?  started,TResult? Function( _Sent value)?  sent,TResult? Function( _Stopped value)?  stopped,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Laoding() when loading != null:
return loading(_that);case _Failed() when failed != null:
return failed(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Started() when started != null:
return started(_that);case _Sent() when sent != null:
return sent(_that);case _Stopped() when stopped != null:
return stopped(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  failed,TResult Function()?  loaded,TResult Function()?  started,TResult Function( Message sentMessage)?  sent,TResult Function()?  stopped,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Laoding() when loading != null:
return loading();case _Failed() when failed != null:
return failed();case _Loaded() when loaded != null:
return loaded();case _Started() when started != null:
return started();case _Sent() when sent != null:
return sent(_that.sentMessage);case _Stopped() when stopped != null:
return stopped();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  failed,required TResult Function()  loaded,required TResult Function()  started,required TResult Function( Message sentMessage)  sent,required TResult Function()  stopped,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Laoding():
return loading();case _Failed():
return failed();case _Loaded():
return loaded();case _Started():
return started();case _Sent():
return sent(_that.sentMessage);case _Stopped():
return stopped();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  failed,TResult? Function()?  loaded,TResult? Function()?  started,TResult? Function( Message sentMessage)?  sent,TResult? Function()?  stopped,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Laoding() when loading != null:
return loading();case _Failed() when failed != null:
return failed();case _Loaded() when loaded != null:
return loaded();case _Started() when started != null:
return started();case _Sent() when sent != null:
return sent(_that.sentMessage);case _Stopped() when stopped != null:
return stopped();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MessageState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.initial()';
}


}




/// @nodoc


class _Laoding implements MessageState {
  const _Laoding();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Laoding);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.loading()';
}


}




/// @nodoc


class _Failed implements MessageState {
  const _Failed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.failed()';
}


}




/// @nodoc


class _Loaded implements MessageState {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.loaded()';
}


}




/// @nodoc


class _Started implements MessageState {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.started()';
}


}




/// @nodoc


class _Sent implements MessageState {
  const _Sent({required this.sentMessage});
  

 final  Message sentMessage;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SentCopyWith<_Sent> get copyWith => __$SentCopyWithImpl<_Sent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sent&&(identical(other.sentMessage, sentMessage) || other.sentMessage == sentMessage));
}


@override
int get hashCode => Object.hash(runtimeType,sentMessage);

@override
String toString() {
  return 'MessageState.sent(sentMessage: $sentMessage)';
}


}

/// @nodoc
abstract mixin class _$SentCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory _$SentCopyWith(_Sent value, $Res Function(_Sent) _then) = __$SentCopyWithImpl;
@useResult
$Res call({
 Message sentMessage
});




}
/// @nodoc
class __$SentCopyWithImpl<$Res>
    implements _$SentCopyWith<$Res> {
  __$SentCopyWithImpl(this._self, this._then);

  final _Sent _self;
  final $Res Function(_Sent) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sentMessage = null,}) {
  return _then(_Sent(
sentMessage: null == sentMessage ? _self.sentMessage : sentMessage // ignore: cast_nullable_to_non_nullable
as Message,
  ));
}


}

/// @nodoc


class _Stopped implements MessageState {
  const _Stopped();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stopped);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.stopped()';
}


}




// dart format on
