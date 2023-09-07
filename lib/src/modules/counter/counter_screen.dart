import 'package:clean_architecture/src/core/constants/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:clean_architecture/src/modules/shared/base/base_screen.dart';

class CounterScreen extends BaseScreen {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }
@override
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
            style: AppTheme.currentTheme.textTheme.labelLarge,
          ),
          Text(
            'counter',
            style: AppTheme.currentTheme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  @override
  Widget? floatingActionButton() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }

  void _incrementCounter() {}
}
