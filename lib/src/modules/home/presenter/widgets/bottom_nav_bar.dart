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
      onTap: _onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: AppValues.zero,
      unselectedFontSize: AppValues.zero,
      elevation: AppValues.elevationLvl3,
      type: BottomNavigationBarType.fixed,
      currentIndex: navigationShell.currentIndex,
      backgroundColor: Theme.of(context).colorScheme.surface,
      items: [
        BottomNavBarItem(
          context: context,
          navLabel: "Home",
          iconActive: Icons.home_rounded,
          iconInactive: Icons.home_outlined,
          padding: const EdgeInsets.symmetric(
            vertical: AppValues.padding_3,
          ),
        ),
        BottomNavBarItem(
          context: context,
          navLabel: "Store",
          iconActive: Icons.store_rounded,
          iconInactive: Icons.store_outlined,
          padding: const EdgeInsets.symmetric(
            vertical: AppValues.padding_3,
          ),
        ),
        BottomNavBarItem(
          context: context,
          navLabel: "Profile",
          iconActive: Icons.person_rounded,
          iconInactive: Icons.person_outline,
          padding: const EdgeInsets.symmetric(
            vertical: AppValues.padding_3,
          ),
        ),
      ],
    );
  }
}
