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
    log('getMessages');
    emit(_Laoding());

    try {
      _messages = await _messagesRepository.getMessages();
      log('getMessages from server');
      _settings = _settingsRepository.getSettings();
      log('get settings from local');

      if (_status == AppStatus.paused) {
        emit(_Started());
        _status = AppStatus.started;
        log('$_status');
        _loop();
      } else if (_status == AppStatus.stopped) {
        log('$_status');
        emit(_Loaded());
      }
    } catch (e) {
      log('$e');
      emit(_Failed(message: '$e'));
      stop();
    }
  }

  Future<void> _refreshList() async {
    log('_refreshList');
    if (_sentMessages.isNotEmpty && _settings.notifyServer) {
      try {
        log('updateMessages');
        await _messagesRepository.updateMessages(messages: _sentMessages);
        _sentMessages = [];
      } catch (e) {
        log('$e');
        _status = AppStatus.failed;
        log('$_status');
        emit(_Failed(message: '$e'));
        stop();
        return;
      }
    }
    log('Wait for ${_settings.listenInterval} seconds');
    await Future.delayed(Duration(seconds: _settings.listenInterval));
    getMessages();
  }

  List<Message> get messages {
    return _messages;
  }

  void start() async {
    log('start');
    if (_status != AppStatus.started) {
      emit(_Started());
      _status = AppStatus.started;
      log('$_status');
      _loop();
    }
  }

  void stop() async {
    log('stop');
    if (_status != AppStatus.stopped) {
      emit(_Stopped());
      _status = AppStatus.stopped;
      log('$_status');
    }
  }

  Future<void> _loop() async {
    log('_loop');
    log('$_status');
    if (_status != AppStatus.started) {
      emit(_Stopped());
      return;
    }

    if (_messages.isEmpty) {
      _status = AppStatus.paused;
      log('$_status');
      _refreshList();
      return;
    }

    emit(_Sending());

    final message = _messages.removeAt(0);
    log('$message');

    listener(SendStatus status) {
      switch (status) {
        case SendStatus.DELIVERED:
          final sentMessage = Message(
            null,
            queueId: message.queueId,
            messageId: message.messageId,
            content: message.content,
            phoneNumber: message.phoneNumber,
            countryCode: message.countryCode,
            queuedAt: message.queuedAt,
            sentAt: DateTime.now(),
            status: MessageStatus.sent,
            errorMessage: '',
          );
          emit(_Sent(sentMessage: sentMessage));
          _sentMessages.add(sentMessage);
          break;
        case SendStatus.SENT:
          final sentMessage = Message(
            null,
            queueId: message.queueId,
            messageId: message.messageId,
            content: message.content,
            phoneNumber: message.phoneNumber,
            countryCode: message.countryCode,
            queuedAt: message.queuedAt,
            sentAt: DateTime.now(),
            status: MessageStatus.sent,
            errorMessage: '',
          );
          emit(_Sent(sentMessage: sentMessage));
          _sentMessages.add(sentMessage);
          break;
      }
    }

    try {
      log('_sendSms');
      final result = await _messagesRepository.sendMessage(
        message: message,
        statusListener: listener,
      );

      if (result == false) {
        final sentMessage = Message(
          null,
          queueId: message.queueId,
          messageId: message.messageId,
          content: message.content,
          phoneNumber: message.phoneNumber,
          countryCode: message.countryCode,
          queuedAt: message.queuedAt,
          sentAt: DateTime.now(),
          status: MessageStatus.failed,
          errorMessage: '',
        );
        _sentMessages.add(sentMessage);
        emit(_Sent(sentMessage: sentMessage));
      }
    } catch (e) {
      log('$e');
      emit(_Failed(message: '$e'));
      final sentMessage = Message(
        null,
        queueId: message.queueId,
        messageId: message.messageId,
        content: message.content,
        phoneNumber: message.phoneNumber,
        countryCode: message.countryCode,
        queuedAt: message.queuedAt,
        sentAt: DateTime.now(),
        status: MessageStatus.failed,
        errorMessage: '',
      );
      _sentMessages.add(sentMessage);
      emit(_Sent(sentMessage: sentMessage));
      // stop();
    }

    log('$_sentMessages');
    await Future.delayed(Duration(seconds: _settings.sentInterval));
    emit(_Started());
    _loop();
  }

  void dispose() {
    stop();
    _messages.clear();
  }
}
