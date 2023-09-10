import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:clean_architecture/src/core/constants/app_values.dart';

class BottomNavBarItem implements BottomNavigationBarItem {
  BottomNavBarItem({
    required this.context,
    required this.navLabel,
    required this.iconActive,
    required this.iconInactive,
    this.padding = EdgeInsets.zero,
    this.decoration,
    this.hint,
  });

  final BuildContext context;
  final String navLabel;
  final IconData iconActive;
  final IconData iconInactive;
  final BoxDecoration? decoration;
  final String? hint;
  final EdgeInsetsGeometry padding;

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
      margin: const EdgeInsets.all(
        AppValues.margin_6,
      ),
      padding: padding,
      height: AppValues.navBarHeight,
      width: AppValues.infinity,
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: AppValues.icon * 2.5,
            height: AppValues.icon * 1.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: isActive
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.surface,
            ),
            child: Icon(
              isActive ? iconActive : iconInactive,
              color: isActive
                  ? Theme.of(context).colorScheme.onSecondaryContainer
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              size: AppValues.icon,
            ),
          ),
          Text(
            navLabel,
            textAlign: TextAlign.center,
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
