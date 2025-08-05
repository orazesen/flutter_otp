import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:telephony/telephony.dart';

abstract class IMessagesRepository {
  Future<List<Message>> getMessages();
  Future<bool> updateMessages({required List<Message> messages});
  Future<bool> sendMessage({
    required Message message,
    Function(SendStatus)? statusListener,
  });
}
