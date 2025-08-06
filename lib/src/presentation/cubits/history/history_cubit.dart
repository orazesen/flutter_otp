import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(_Initial());

  final List<Message> _messages = [];

  void addMessage(Message sentMessage) {
    emit(_Loading());
    _messages.add(sentMessage);
    emit(_Loaded(messages: _messages));
  }
}
