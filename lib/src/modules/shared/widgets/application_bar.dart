import 'package:flutter/material.dart';

import 'package:clean_architecture/src/modules/shared/widgets/app_bar_title.dart';
import 'package:clean_architecture/src/core/theme/app_theme.dart';

class ApplicationBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitleText;
  final List<Widget>? actions;
  final bool isBackButtonEnabled;
  final Widget? drawerIcon;

  const ApplicationBar({
    Key? key,
    required this.appBarTitleText,
    this.actions,
    this.isBackButtonEnabled = true,
    this.drawerIcon,
  }) : super(key: key);

  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: isBackButtonEnabled,
      actions: actions,
      iconTheme: IconThemeData(
        color: AppTheme.currentTheme.colorScheme.primary,
      ),
      title: AppBarTitle(text: appBarTitleText),
      leading: drawerIcon,
    );
  }
}
