// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_otp/app/di/common_injectable_module.dart' as _i728;
import 'package:flutter_otp/src/data/data_sources/local_data_source_impl.dart'
    as _i833;
import 'package:flutter_otp/src/data/data_sources/remote_data_source_impl.dart'
    as _i1043;
import 'package:flutter_otp/src/data/data_sources/sms_data_source_impl.dart'
    as _i836;
import 'package:flutter_otp/src/data/repositories/message_repository.dart'
    as _i29;
import 'package:flutter_otp/src/data/repositories/settings_repository_impl.dart'
    as _i237;
import 'package:flutter_otp/src/domain/data_sources/i_local_data_source.dart'
    as _i83;
import 'package:flutter_otp/src/domain/data_sources/i_remote_data_source.dart'
    as _i930;
import 'package:flutter_otp/src/domain/data_sources/i_sms_data_source.dart'
    as _i37;
import 'package:flutter_otp/src/domain/repositories/i_messages_repository.dart'
    as _i195;
import 'package:flutter_otp/src/domain/repositories/i_settings_repository.dart'
    as _i776;
import 'package:flutter_otp/src/presentation/cubits/message/message_cubit.dart'
    as _i359;
import 'package:flutter_otp/src/presentation/cubits/settings/settings_cubit.dart'
    as _i226;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final commonInjectableModule = _$CommonInjectableModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => commonInjectableModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i37.ISmsDataSource>(() => _i836.SmsDataSourceImpl());
    gh.factory<_i83.ILocalDataSource>(
      () => _i833.LocalDataSourceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i776.ISettingsRepository>(
      () => _i237.SettingsRepositoryImpl(gh<_i83.ILocalDataSource>()),
    );
    gh.factory<_i930.IRemoteDataSource>(
      () => _i1043.RemoteDataSourceImpl(gh<_i83.ILocalDataSource>()),
    );
    gh.factory<_i226.SettingsCubit>(
      () => _i226.SettingsCubit(gh<_i776.ISettingsRepository>()),
    );
    gh.factory<_i195.IMessagesRepository>(
      () => _i29.MessageRepositoryImpl(
        gh<_i930.IRemoteDataSource>(),
        gh<_i37.ISmsDataSource>(),
      ),
    );
    gh.factory<_i359.MessageCubit>(
      () => _i359.MessageCubit(
        gh<_i195.IMessagesRepository>(),
        gh<_i776.ISettingsRepository>(),
      ),
    );
    return this;
  }
}

class _$CommonInjectableModule extends _i728.CommonInjectableModule {}
