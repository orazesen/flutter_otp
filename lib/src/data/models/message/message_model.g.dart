// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      queueId: (json['queue_id'] as num).toInt(),
      messageId: (json['message_id'] as num?)?.toInt(),
      content: json['content'] as String?,
      phoneNumber: json['phone_number'] as String?,
      countryCode: json['country_code'] as String?,
      queuedAt: json['queued_at'] == null
          ? null
          : DateTime.parse(json['queued_at'] as String),
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      errorMessage: json['error_message'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'queue_id': instance.queueId,
      'message_id': instance.messageId,
      'content': instance.content,
      'phone_number': instance.phoneNumber,
      'country_code': instance.countryCode,
      'queued_at': instance.queuedAt?.toIso8601String(),
      'sent_at': instance.sentAt?.toIso8601String(),
      'error_message': instance.errorMessage,
      'status': instance.status,
    };
