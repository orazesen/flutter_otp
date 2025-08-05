import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:flutter_otp/src/domain/entities/settings.dart';
import 'package:flutter_otp/src/domain/repositories/i_messages_repository.dart';
import 'package:flutter_otp/src/domain/repositories/i_settings_repository.dart';
import 'package:flutter_otp/src/domain/types/app_status.dart';
import 'package:flutter_otp/src/domain/types/message_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:telephony/telephony.dart';

part 'message_state.dart';
part 'message_cubit.freezed.dart';

@injectable
class MessageCubit extends Cubit<MessageState> {
  MessageCubit(this._messagesRepository, this._settingsRepository)
    : super(_Initial());
  final IMessagesRepository _messagesRepository;
  final ISettingsRepository _settingsRepository;

  List<Message> _messages = [];
  List<Message> _sentMessages = [];
  late Settings _settings;
  AppStatus _status = AppStatus.stopped;

  Future<void> getMessages() async {
    emit(_Laoding());

    try {
      _messages = await _messagesRepository.getMessages();
      _settings = _settingsRepository.getSettings();

      if (_status == AppStatus.paused) {
        emit(_Started());
        _resume();
      } else if (_status == AppStatus.stopped) {
        emit(_Loaded());
      }
    } catch (e) {
      _status = AppStatus.failed;
      emit(_Failed());
    }
  }

  Future<void> _refreshList() async {
    if (_sentMessages.isNotEmpty && _settings.notifyServer) {
      try {
        await _messagesRepository.updateMessages(messages: _sentMessages);
        _sentMessages = [];
      } catch (e) {
        log('$e');
        _status = AppStatus.failed;
        emit(_Failed());
      }
    }
    await Future.delayed(Duration(seconds: _settings.listenInterval));
    getMessages();
  }

  List<Message> get messages {
    return _messages;
  }

  void start() async {
    if (_status != AppStatus.started) {
      emit(_Started());
      _resume();
    }
  }

  void stop() async {
    if (_status != AppStatus.stopped) {
      emit(_Stopped());
      _pause();
    }
  }

  Future<void> _sendSms(Message message) async {
    try {
      MessageStatus msgStatus;
      listener(SendStatus status) {
        switch (status) {
          case SendStatus.DELIVERED:
            log(
              'Delivered to ${message.phoneNumber} with message ${message.content}',
            );
            msgStatus = MessageStatus.delivered;
            break;
          case SendStatus.SENT:
            log(
              'Sent to ${message.phoneNumber} with message ${message.content}',
            );
            msgStatus = MessageStatus.sent;
            break;
        }

        _sentMessages.add(
          Message(
            message.toModel(),
            queueId: message.queueId,
            messageId: message.messageId,
            content: message.content,
            phoneNumber: message.phoneNumber,
            countryCode: message.countryCode,
            queuedAt: message.queuedAt,
            sentAt: DateTime.now(),
            status: msgStatus,
            errorMessage: '',
          ),
        );
      }

      await _messagesRepository.sendMessage(
        message: message,
        statusListener: listener,
      );
      if (_status == AppStatus.started) {
        emit(_Sent());
      }
    } catch (e) {
      emit(_Failed());
      _pause();
    }
  }

  Future<void> _resume() async {
    _status = AppStatus.started;

    while (_messages.isNotEmpty && _status == AppStatus.started) {
      final message = _messages.removeAt(0);
      await _sendSms(message);
      await Future.delayed(Duration(milliseconds: _settings.sentInterval));
      emit(_Started());
    }

    if (_status == AppStatus.started) {
      _pause();
      await _refreshList();
    }
  }

  void _pause() {
    _status = AppStatus.paused;
  }

  void dispose() {
    _pause();
    _messages.clear();
  }
}
