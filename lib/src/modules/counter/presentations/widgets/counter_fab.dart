import 'package:flutter/material.dart';

import 'package:clean_architecture/src/modules/shared/mixin/base_widget.dart';

class CounterFab extends StatelessWidget with BaseWidgetMixin {
  CounterFab({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;

  @override
  Widget body(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed(),
      tooltip: "Icrement counter",
      child: const Icon(
        Icons.add_rounded,
      ),
    );
  }
}
