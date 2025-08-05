import 'package:flutter_otp/src/data/models/settings/settings_model.dart';

abstract class ILocalDataSource {
  SettingsModel getSettings();
  Future<bool> setSettings({required SettingsModel settings});
}
