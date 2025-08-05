// ignore_for_file: strict_raw_type

import 'dart:async';
import 'dart:developer';
import 'package:flutter_otp/app/di/injector.dart';
import 'package:flutter_otp/app/observers/app_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String _tag = "App";

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack, name: _tag);
  };

  Bloc.observer = AppBlocObserver();

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();

    runApp(await builder());
  }, (error, stackTrace) => log('Unhandled exception: $error', name: _tag));
}
