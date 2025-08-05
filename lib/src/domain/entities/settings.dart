import 'package:flutter_otp/src/data/models/settings/settings_model.dart';

class Settings {
  final String listenApi;
  final String notifyApi;
  final int listenInterval;
  final int sentInterval;
  final bool notifyServer;
  final String apiKey;
  final SettingsModel? _model;

  const Settings(
    this._model, {
    required this.listenApi,
    required this.notifyApi,
    required this.listenInterval,
    required this.sentInterval,
    required this.notifyServer,
    required this.apiKey,
  });

  factory Settings.fromModel(SettingsModel model) {
    return Settings(
      model,
      listenApi: model.listenApi,
      notifyApi: model.notifyApi,
      listenInterval: model.listenInterval,
      sentInterval: model.sentInterval,
      notifyServer: model.notifyServer,
      apiKey: model.apiKey,
    );
  }

  SettingsModel toModel() {
    return _model ??
        SettingsModel(
          listenApi: listenApi,
          notifyApi: notifyApi,
          listenInterval: listenInterval,
          sentInterval: sentInterval,
          notifyServer: notifyServer,
          apiKey: apiKey,
        );
  }
}
