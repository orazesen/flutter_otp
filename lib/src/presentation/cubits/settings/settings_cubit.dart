import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/src/domain/entities/settings.dart';
import 'package:flutter_otp/src/domain/repositories/i_settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._settingsRepository) : super(_Initial());

  final ISettingsRepository _settingsRepository;

  Future<void> getSettings() async {
    emit(_Loading());
    await Future.delayed(Duration(seconds: 1));
    final settings = _settingsRepository.getSettings();
    emit(_Succeeded(settings: settings));
  }

  Future<void> setSettings(Settings settings) async {
    emit(_Loading());
    final status = await _settingsRepository.setSettings(settings: settings);
    if (status) {
      emit(_Succeeded(settings: settings));
    } else {
      emit(_Failed());
    }
  }
}
