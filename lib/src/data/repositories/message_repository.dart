import 'package:flutter_otp/src/domain/data_sources/i_remote_data_source.dart';
import 'package:flutter_otp/src/domain/data_sources/i_sms_data_source.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:flutter_otp/src/domain/repositories/i_messages_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:telephony/telephony.dart';

@Injectable(as: IMessagesRepository)
class MessageRepositoryImpl implements IMessagesRepository {
  const MessageRepositoryImpl(this._remoteDataSource, this._smsDataSource);
  final IRemoteDataSource _remoteDataSource;
  final ISmsDataSource _smsDataSource;

  @override
  Future<List<Message>> getMessages() async {
    try {
      final messages = await _remoteDataSource.getMessages();
      return messages.map((e) => Message.fromModel(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> updateMessages({required List<Message> messages}) async {
    return await _remoteDataSource.updateMessages(
      messages: messages.map((e) => e.toModel()).toList(),
    );
  }

  @override
  Future<bool> sendMessage({
    required Message message,
    Function(SendStatus)? statusListener,
  }) async {
    return await _smsDataSource.sendMessage(
      phoneNumber: message.phoneNumber,
      content: message.content,
      statusListener: statusListener,
    );
  }
}
