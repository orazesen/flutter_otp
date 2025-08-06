part of 'message_cubit.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;
  const factory MessageState.loading() = _Laoding;
  const factory MessageState.failed() = _Failed;
  const factory MessageState.loaded() = _Loaded;
  const factory MessageState.started() = _Started;
  const factory MessageState.sent({required Message sentMessage}) = _Sent;
  const factory MessageState.stopped() = _Stopped;
}
