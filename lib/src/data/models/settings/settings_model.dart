import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
abstract class SettingsModel with _$SettingsModel {
  factory SettingsModel({
    @Default('') String listenApi,
    @Default('') String notifyApi,
    @Default(30) int listenInterval,
    @Default(15) int sentInterval,
    @Default(true) bool notifyServer,
    @Default('') String apiKey,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
