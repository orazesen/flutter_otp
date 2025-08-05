import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
abstract class SettingsModel with _$SettingsModel {
  factory SettingsModel({
    @Default('https://yindam.com.tm/ymhasap/api/sms-messages/pending')
    String listenApi,
    @Default('https://yindam.com.tm/ymhasap/api/sms-messages/batch-update')
    String notifyApi,
    @Default(30) int listenInterval,
    @Default(15) int sentInterval,
    @Default(true) bool notifyServer,
    @Default('2O5Tr6taJw7PxanYv5vxLeQHSd8ZOns6Pd82GzHgmQbppUxygk')
    String apiKey,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
