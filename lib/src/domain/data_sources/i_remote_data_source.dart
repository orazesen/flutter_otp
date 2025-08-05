import 'package:flutter_otp/src/data/models/message/message_model.dart';

abstract class IRemoteDataSource {
  Future<List<MessageModel>> getMessages();
  Future<bool> updateMessages({required List<MessageModel> messages});
}
