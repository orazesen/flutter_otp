import 'package:flutter_otp/src/domain/data_sources/i_local_data_source.dart';
import 'package:flutter_otp/src/domain/entities/settings.dart';
import 'package:flutter_otp/src/domain/repositories/i_settings_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISettingsRepository)
class SettingsRepositoryImpl implements ISettingsRepository {
  const SettingsRepositoryImpl(this._localDataSource);

  final ILocalDataSource _localDataSource;

  @override
  Settings getSettings() {
    final settings = _localDataSource.getSettings();
    return Settings.fromModel(settings);
  }

  @override
  Future<bool> setSettings({required Settings settings}) {
    return _localDataSource.setSettings(settings: settings.toModel());
  }
}
