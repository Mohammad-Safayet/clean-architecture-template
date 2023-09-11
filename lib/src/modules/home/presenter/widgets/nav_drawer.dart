import 'package:flutter/material.dart';

import 'package:clean_architecture/src/modules/home/presenter/widgets/nav_drawer_item.dart';
import 'package:clean_architecture/src/modules/shared/mixin/base_widget.dart';
import 'package:clean_architecture/src/core/constants/app_values.dart';
import 'package:clean_architecture/src/modules/home/presenter/widgets/nav_drawer_header.dart';

class NavDrawer extends StatelessWidget with BaseWidgetMixin {
  @override
  Widget? body(BuildContext context) {
    return NavigationDrawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      children: [
        NavDrawerHeader(),
        NavDrawerItem(
          leading: Icon(
            Icons.settings_rounded,
            size: AppValues.icon,
            color: Theme.of(context).colorScheme.primary,
          ),
          label: "Settings",
        ),
        NavDrawerItem(
          leading: Icon(
            Icons.info_outlined,
            size: AppValues.icon,
            color: Theme.of(context).colorScheme.primary,
          ),
          label: "About",
        ),
      ],
    );
  }
}
