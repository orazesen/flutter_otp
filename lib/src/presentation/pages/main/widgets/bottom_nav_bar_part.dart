part of '../main_page.dart';

class _BottomNavBarPart extends StatelessWidget {
  const _BottomNavBarPart({required this.router, required this.icons});
  final TabsRouter router;
  final List<IconData> icons;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomNavigationBar(
        currentIndex: router.activeIndex,
        onTap: (value) {
          router.setActiveIndex(value);
        },
        items: icons
            .map((e) => BottomNavigationBarItem(icon: Icon(e), label: ''))
            .toList(),
      ),
    );
  }
}
