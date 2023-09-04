import 'package:clean_architecture/src/modules/home/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.HOME,
        builder: (context, state) {
          return HomeScreen();
        },
      ),
    ],
  );
}
