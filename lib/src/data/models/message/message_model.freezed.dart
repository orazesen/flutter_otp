// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageModel {

@JsonKey(name: 'queue_id') int get queueId;@JsonKey(name: 'message_id') int? get messageId; String? get content;@JsonKey(name: 'phone_number') String? get phoneNumber;@JsonKey(name: 'country_code') String? get countryCode;@JsonKey(name: 'queued_at') DateTime? get queuedAt;@JsonKey(name: 'sent_at') DateTime? get sentAt;@JsonKey(name: 'error_message') String? get errorMessage; String? get status;
/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageModelCopyWith<MessageModel> get copyWith => _$MessageModelCopyWithImpl<MessageModel>(this as MessageModel, _$identity);

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageModel&&(identical(other.queueId, queueId) || other.queueId == queueId)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.content, content) || other.content == content)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.queuedAt, queuedAt) || other.queuedAt == queuedAt)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,queueId,messageId,content,phoneNumber,countryCode,queuedAt,sentAt,errorMessage,status);

@override
String toString() {
  return 'MessageModel(queueId: $queueId, messageId: $messageId, content: $content, phoneNumber: $phoneNumber, countryCode: $countryCode, queuedAt: $queuedAt, sentAt: $sentAt, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class $MessageModelCopyWith<$Res>  {
  factory $MessageModelCopyWith(MessageModel value, $Res Function(MessageModel) _then) = _$MessageModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'queue_id') int queueId,@JsonKey(name: 'message_id') int? messageId, String? content,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'queued_at') DateTime? queuedAt,@JsonKey(name: 'sent_at') DateTime? sentAt,@JsonKey(name: 'error_message') String? errorMessage, String? status
});




}
/// @nodoc
class _$MessageModelCopyWithImpl<$Res>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._self, this._then);

  final MessageModel _self;
  final $Res Function(MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? queueId = null,Object? messageId = freezed,Object? content = freezed,Object? phoneNumber = freezed,Object? countryCode = freezed,Object? queuedAt = freezed,Object? sentAt = freezed,Object? errorMessage = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
queueId: null == queueId ? _self.queueId : queueId // ignore: cast_nullable_to_non_nullable
as int,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,queuedAt: freezed == queuedAt ? _self.queuedAt : queuedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageModel].
extension MessageModelPatterns on MessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'queue_id')  int queueId, @JsonKey(name: 'message_id')  int? messageId,  String? content, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'queued_at')  DateTime? queuedAt, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'error_message')  String? errorMessage,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.queueId,_that.messageId,_that.content,_that.phoneNumber,_that.countryCode,_that.queuedAt,_that.sentAt,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'queue_id')  int queueId, @JsonKey(name: 'message_id')  int? messageId,  String? content, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'queued_at')  DateTime? queuedAt, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'error_message')  String? errorMessage,  String? status)  $default,) {final _that = this;
switch (_that) {
case _MessageModel():
return $default(_that.queueId,_that.messageId,_that.content,_that.phoneNumber,_that.countryCode,_that.queuedAt,_that.sentAt,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'queue_id')  int queueId, @JsonKey(name: 'message_id')  int? messageId,  String? content, @JsonKey(name: 'phone_number')  String? phoneNumber, @JsonKey(name: 'country_code')  String? countryCode, @JsonKey(name: 'queued_at')  DateTime? queuedAt, @JsonKey(name: 'sent_at')  DateTime? sentAt, @JsonKey(name: 'error_message')  String? errorMessage,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _MessageModel() when $default != null:
return $default(_that.queueId,_that.messageId,_that.content,_that.phoneNumber,_that.countryCode,_that.queuedAt,_that.sentAt,_that.errorMessage,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageModel implements MessageModel {
   _MessageModel({@JsonKey(name: 'queue_id') required this.queueId, @JsonKey(name: 'message_id') this.messageId, this.content, @JsonKey(name: 'phone_number') this.phoneNumber, @JsonKey(name: 'country_code') this.countryCode, @JsonKey(name: 'queued_at') this.queuedAt, @JsonKey(name: 'sent_at') this.sentAt, @JsonKey(name: 'error_message') this.errorMessage, this.status});
  factory _MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

@override@JsonKey(name: 'queue_id') final  int queueId;
@override@JsonKey(name: 'message_id') final  int? messageId;
@override final  String? content;
@override@JsonKey(name: 'phone_number') final  String? phoneNumber;
@override@JsonKey(name: 'country_code') final  String? countryCode;
@override@JsonKey(name: 'queued_at') final  DateTime? queuedAt;
@override@JsonKey(name: 'sent_at') final  DateTime? sentAt;
@override@JsonKey(name: 'error_message') final  String? errorMessage;
@override final  String? status;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageModelCopyWith<_MessageModel> get copyWith => __$MessageModelCopyWithImpl<_MessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageModel&&(identical(other.queueId, queueId) || other.queueId == queueId)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.content, content) || other.content == content)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.queuedAt, queuedAt) || other.queuedAt == queuedAt)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,queueId,messageId,content,phoneNumber,countryCode,queuedAt,sentAt,errorMessage,status);

@override
String toString() {
  return 'MessageModel(queueId: $queueId, messageId: $messageId, content: $content, phoneNumber: $phoneNumber, countryCode: $countryCode, queuedAt: $queuedAt, sentAt: $sentAt, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class _$MessageModelCopyWith<$Res> implements $MessageModelCopyWith<$Res> {
  factory _$MessageModelCopyWith(_MessageModel value, $Res Function(_MessageModel) _then) = __$MessageModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'queue_id') int queueId,@JsonKey(name: 'message_id') int? messageId, String? content,@JsonKey(name: 'phone_number') String? phoneNumber,@JsonKey(name: 'country_code') String? countryCode,@JsonKey(name: 'queued_at') DateTime? queuedAt,@JsonKey(name: 'sent_at') DateTime? sentAt,@JsonKey(name: 'error_message') String? errorMessage, String? status
});




}
/// @nodoc
class __$MessageModelCopyWithImpl<$Res>
    implements _$MessageModelCopyWith<$Res> {
  __$MessageModelCopyWithImpl(this._self, this._then);

  final _MessageModel _self;
  final $Res Function(_MessageModel) _then;

/// Create a copy of MessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? queueId = null,Object? messageId = freezed,Object? content = freezed,Object? phoneNumber = freezed,Object? countryCode = freezed,Object? queuedAt = freezed,Object? sentAt = freezed,Object? errorMessage = freezed,Object? status = freezed,}) {
  return _then(_MessageModel(
queueId: null == queueId ? _self.queueId : queueId // ignore: cast_nullable_to_non_nullable
as int,messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,queuedAt: freezed == queuedAt ? _self.queuedAt : queuedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
