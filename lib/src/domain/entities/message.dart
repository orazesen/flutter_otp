import 'package:flutter_otp/src/data/models/message/message_model.dart';
import 'package:flutter_otp/src/domain/types/message_status.dart';

class Message {
  final int queueId;
  final int messageId;
  final String content;
  final String phoneNumber;
  final String countryCode;
  final DateTime queuedAt;
  final DateTime sentAt;
  final MessageStatus status;
  final String errorMessage;
  final MessageModel? _model;

  const Message(
    this._model, {
    required this.queueId,
    required this.messageId,
    required this.content,
    required this.phoneNumber,
    required this.countryCode,
    required this.queuedAt,
    required this.sentAt,
    required this.status,
    required this.errorMessage,
  });

  factory Message.fromModel(MessageModel model) {
    return Message(
      model,
      queueId: model.queueId,
      messageId: model.messageId ?? -1,
      content: model.content ?? '',
      phoneNumber: model.phoneNumber ?? '',
      countryCode: model.countryCode ?? '',
      queuedAt: model.queuedAt ?? DateTime(1997),
      sentAt: model.sentAt ?? DateTime(1997),
      status: model.status == null
          ? MessageStatus.created
          : MessageStatus.values.firstWhere(
              (element) =>
                  element.name.toLowerCase() == model.status!.toLowerCase(),
            ),
      errorMessage: model.errorMessage ?? '',
    );
  }

  MessageModel toModel() {
    return _model ??
        MessageModel(
          queueId: queueId,
          messageId: messageId < 0 ? null : messageId,
          content: content.isEmpty ? null : content,
          phoneNumber: phoneNumber.isEmpty ? null : phoneNumber,
          countryCode: countryCode.isEmpty ? null : countryCode,
          queuedAt: queuedAt.year == 1997 ? null : queuedAt,
          sentAt: sentAt.year == 1997 ? null : sentAt,
          status: status == MessageStatus.created ? null : status.name,
          errorMessage: errorMessage.isEmpty ? null : errorMessage,
        );
  }
}
