import 'package:clean_architecture/src/modules/home/presenter/widgets/drawer_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:clean_architecture/src/core/config/config.dart';
import 'package:clean_architecture/src/modules/shared/base/base_screen.dart';
import 'package:clean_architecture/src/modules/shared/widgets/application_bar.dart';
import 'package:clean_architecture/src/modules/home/presenter/widgets/bottom_nav_bar.dart';

class HomeScreen extends BaseScreen {
  HomeScreen({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;
  final _envConfig = BuildConfig.instance.envConfig;

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return ApplicationBar(
      appBarTitleText: _envConfig.appName,
      drawerIcon: DrawerIconButton(),
    );
  }

  @override
  Widget body(BuildContext context) {
    return navigationShell;
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(
      navigationShell: navigationShell,
    );
  }
}
