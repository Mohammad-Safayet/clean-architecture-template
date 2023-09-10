import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:clean_architecture/src/modules/counter/counter_screen.dart';
import 'package:clean_architecture/src/modules/profile/profile_screen.dart';
import 'package:clean_architecture/src/modules/store/store_screen.dart';
import 'package:clean_architecture/src/modules/home/home.dart';

part 'app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

abstract class AppPages {
  static final routes = GoRouter(
    initialLocation: Routes.COUNTER,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeScreen(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.COUNTER,
                builder: (context, state) => CounterScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.STORE,
                builder: (context, state) => StoreScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.PROFILE,
                builder: (context, state) => ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
