import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';
import 'package:flutter_otp/src/presentation/pages/history/history_page.dart';
import 'package:flutter_otp/src/presentation/pages/home/home_page.dart';
part './widgets/bottom_nav_bar_part.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [const HomePage(), const HistoryPage()];

  final List<PageRouteInfo> _routes = [HomeRoute(), HistoryRoute()];
  final List<IconData> _icons = [Icons.home, Icons.history];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      routes: _routes,
      homeIndex: 1,
      bottomNavigationBuilder: (_, router) {
        return _BottomNavBarPart(router: router, icons: _icons);
      },
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
