import 'package:clean_architecture/src/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:clean_architecture/l10n/l10n.dart';
import 'package:clean_architecture/src/core/theme/app_theme.dart';
import 'package:clean_architecture/src/core/config/build_config.dart';


class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final config = BuildConfig.instance.envConfig;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: config.appName,
      supportedLocales: L10n.ALL,
      locale: L10n.currentLocale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRoutes.routes,
      routerDelegate: AppRoutes.routes.routerDelegate,
      routeInformationParser: AppRoutes.routes.routeInformationParser,
      routeInformationProvider: AppRoutes.routes.routeInformationProvider,
    );
  }
}
