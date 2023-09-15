import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:clean_architecture/src/modules/shared/mixin/base_widget.dart';

class CounterText extends StatelessWidget with BaseWidgetMixin {
  CounterText({
    Key? key,
    required this.label,
    this.labelStyle = AppTextStyles.body,
  }) : super(key: key);

  final String label;
  final TextStyle labelStyle;

  @override
  Widget body(BuildContext context) {
    return Text(
      label,
      style: labelStyle,
    );
  }
}
