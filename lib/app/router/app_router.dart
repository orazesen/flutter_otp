import 'package:auto_route/auto_route.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: MainRoute.page,
      path: '/',
      children: [
        AutoRoute(
          path: 'home',
          page: EmptyShellRoute('HomeTap').page,
          initial: true,
          children: [AutoRoute(path: '', page: HomeRoute.page)],
        ),
        AutoRoute(
          path: 'histories',
          page: EmptyShellRoute('HistoriesTab').page,
          children: [AutoRoute(path: '', page: HistoryRoute.page)],
        ),
      ],
    ),
    AutoRoute(page: SettingsRoute.page, path: '/settings'),
  ];
}
