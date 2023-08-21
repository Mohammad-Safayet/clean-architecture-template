import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:clean_architecture/l10n/l10n.dart';
import 'package:clean_architecture/src/modules/home/presenter/home_view.dart';
import 'package:clean_architecture/src/core/theme/app_theme.dart';


class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      supportedLocales: L10n.all,
      locale: const Locale("en"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      themeMode: ThemeMode.dark,
      home: HomeScreen(
        appLocalizations: AppLocalizations.of(context)!,
      ),
    );
  }
}
