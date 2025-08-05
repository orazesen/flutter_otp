import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
abstract class MessageModel with _$MessageModel {
  factory MessageModel({
    @JsonKey(name: 'queue_id') required int queueId,
    @JsonKey(name: 'message_id') int? messageId,
    String? content,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'country_code') String? countryCode,
    @JsonKey(name: 'queued_at') DateTime? queuedAt,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    @JsonKey(name: 'error_message') String? errorMessage,
    String? status,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
