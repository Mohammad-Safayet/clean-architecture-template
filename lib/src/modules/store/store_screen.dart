import 'package:flutter/material.dart';

import 'package:clean_architecture/src/modules/shared/base/base_screen.dart';

class StoreScreen extends BaseScreen {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Store",
        ),
      ),
    );
  }
}
