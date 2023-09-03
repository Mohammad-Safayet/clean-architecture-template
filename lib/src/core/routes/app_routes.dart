import 'package:clean_architecture/src/modules/home/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'app_pages.dart';

abstract class AppRoutes {
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: AppPages.HOME,
        builder: (context, state) {
          return HomeScreen();
        },
      ),
    ],
  );
}
