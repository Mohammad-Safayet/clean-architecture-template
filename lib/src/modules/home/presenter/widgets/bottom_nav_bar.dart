import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:clean_architecture/src/core/constants/app_values.dart';
import 'package:clean_architecture/src/modules/home/presenter/widgets/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedFontSize: AppValues.zero,
      selectedFontSize: AppValues.zero,
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: AppValues.elevationLvl2,
      onTap: _onTap,
      currentIndex: navigationShell.currentIndex,
      items: [
        BottomNavBarItem(
          context: context,
          navLabel: "Home",
          iconActive: Icons.home_outlined,
          iconInactive: Icons.home_rounded,
        ),
        BottomNavBarItem(
          context: context,
          navLabel: "Home",
          iconActive: Icons.home_outlined,
          iconInactive: Icons.home_rounded,
        ),
        BottomNavBarItem(
          context: context,
          navLabel: "Home",
          iconActive: Icons.home_outlined,
          iconInactive: Icons.home_rounded,
        ),
      ],
    );
  }
}
