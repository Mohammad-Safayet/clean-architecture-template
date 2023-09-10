import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:clean_architecture/l10n/l10n.dart';
import 'package:clean_architecture/src/core/routes/app_pages.dart';
import 'package:clean_architecture/src/core/config/build_config.dart';
import 'package:clean_architecture/src/core/constants/theme/app_theme_dark.dart';
import 'package:clean_architecture/src/core/constants/theme/app_theme_light.dart';

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
      theme: appThemeLight,
      darkTheme: appThemeDark,
      themeMode: ThemeMode.dark,
      routerConfig: AppPages.routes,
      routerDelegate: AppPages.routes.routerDelegate,
      routeInformationParser: AppPages.routes.routeInformationParser,
      routeInformationProvider: AppPages.routes.routeInformationProvider,
    );
  }
}
