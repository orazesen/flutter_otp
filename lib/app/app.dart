import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/app/di/injector.dart';
import 'package:flutter_otp/app/observers/app_route_observer.dart';
import 'package:flutter_otp/app/router/app_router.dart';
import 'package:flutter_otp/src/presentation/behaviors/app_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/src/presentation/cubits/history/history_cubit.dart';
import 'package:flutter_otp/src/presentation/cubits/message/message_cubit.dart';
import 'package:flutter_otp/src/presentation/cubits/settings/settings_cubit.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  final SettingsCubit _settingsCubit = i<SettingsCubit>();
  final MessageCubit _messageCubit = i<MessageCubit>();
  final HistoryCubit _historyCubit = i<HistoryCubit>();

  @override
  void dispose() {
    super.dispose();
    _settingsCubit.close();
    _messageCubit.close();
    _historyCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => _settingsCubit..getSettings()),
        BlocProvider(create: (context) => _messageCubit..getMessages()),
        BlocProvider(create: (context) => _historyCubit),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        scrollBehavior: AppScrollBehavior(),
        routerConfig: _appRouter.config(
          navigatorObservers: () {
            return [AppRouteObserver()];
          },
        ),
      ),
    );
  }
}
