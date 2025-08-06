part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.loaded({required List<Message> messages}) =
      _Loaded;
  const factory HistoryState.failed() = _Failed;
}
