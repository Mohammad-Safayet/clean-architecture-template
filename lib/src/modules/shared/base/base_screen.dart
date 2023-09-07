import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

import 'package:clean_architecture/src/core/constants/app_theme.dart';
import 'package:clean_architecture/src/core/config/build_config.dart';

abstract class BaseScreen extends StatelessWidget {
  BaseScreen({
    Key? key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  final Logger logger = BuildConfig.instance.envConfig.logger;

  @override
  Widget build(BuildContext context) {
    return annotatedRegion(
      context,
    );
  }

  PreferredSizeWidget? appBar(BuildContext context);

  Widget body(BuildContext context);

  Widget annotatedRegion(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        //Status bar color for android
        statusBarColor: statusBarColor(),
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Material(
        color: Colors.transparent,
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackgroundColor(),
      key: globalKey,
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
      bottomSheet: bottomSheet(),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }

  Color pageBackgroundColor() {
    return AppTheme.currentTheme.colorScheme.background;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget? bottomSheet() {
    return null;
  }

  Color statusBarColor() {
    return AppTheme.currentTheme.colorScheme.onPrimary;
  }
}
