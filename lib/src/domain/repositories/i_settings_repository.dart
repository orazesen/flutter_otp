import 'package:flutter_otp/src/domain/entities/settings.dart';

abstract class ISettingsRepository {
  Settings getSettings();
  Future<bool> setSettings({required Settings settings});
}
