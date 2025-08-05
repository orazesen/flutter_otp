import 'dart:convert';

import 'package:flutter_otp/src/data/models/settings/settings_model.dart';
import 'package:flutter_otp/src/domain/data_sources/i_local_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ILocalDataSource)
class LocalDataSourceImpl implements ILocalDataSource {
  const LocalDataSourceImpl(this._preferences);
  final SharedPreferences _preferences;
  @override
  SettingsModel getSettings() {
    final settingsValue = _preferences.getString('settings');
    if (settingsValue == null || settingsValue.isEmpty) {
      return SettingsModel();
    }
    return SettingsModel.fromJson(
      jsonDecode(settingsValue) as Map<String, dynamic>,
    );
  }

  @override
  Future<bool> setSettings({required SettingsModel settings}) async {
    return _preferences.setString('settings', jsonEncode(settings.toJson()));
  }
}
