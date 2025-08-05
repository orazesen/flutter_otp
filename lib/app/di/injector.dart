import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_otp/app/di/injector.config.dart';

final GetIt i = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => await i.init();
