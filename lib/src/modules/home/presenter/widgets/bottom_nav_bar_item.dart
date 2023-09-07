import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:clean_architecture/src/core/constants/app_values.dart';

class BottomNavBarItem implements BottomNavigationBarItem {
  BottomNavBarItem({
    required this.context,
    required this.navLabel,
    required this.iconActive,
    required this.iconInactive,
    this.decoration,
    this.hint,
  });

  final BuildContext context;
  final String navLabel;
  final IconData iconActive;
  final IconData iconInactive;
  final BoxDecoration? decoration;
  final String? hint;

  @override
  Widget get activeIcon => _buildIcon(true);

  @override
  Color? get backgroundColor => Theme.of(context).colorScheme.surface;

  @override
  Widget get icon => _buildIcon(false);

  @override
  String? get label => navLabel;

  @override
  String? get tooltip => hint;

  Widget _buildIcon(bool isActive) {
    return Container(
      margin: const EdgeInsets.only(top: AppValues.margin_10),
      height: AppValues.navBarHeight,
      decoration: decoration,
      child: Column(
        children: [
          Icon(
            isActive ? iconActive : iconInactive,
            color: isActive
                ? Theme.of(context).colorScheme.onSecondaryContainer
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          Text(
            navLabel,
            style: AppTextStyles.navigationBarLable.copyWith(
              color: isActive
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
