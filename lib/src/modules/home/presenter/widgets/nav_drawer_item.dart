import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_values.dart';
import 'package:clean_architecture/src/modules/shared/mixin/base_widget.dart';

class NavDrawerItem extends StatelessWidget with BaseWidgetMixin {
  NavDrawerItem({
    Key? key,
    this.leading,
    required this.label,
    this.trailing,
  }) : super(key: key);

  final Widget? leading;
  final String label;
  final Widget? trailing;

  @override
  Widget body(BuildContext context) {
    return Container(
      height: AppValues.navDrawerItemContainer,
      margin: const EdgeInsets.all(
        AppValues.marginXSmall,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppValues.padding,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(
          AppValues.radiusXLarge,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leading ?? Container(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppValues.paddingSmall,
                ),
                child: Text(
                  label,
                  style: AppTextStyles.body,
                ),
              ),
            ),
            trailing ?? Container(),
          ],
        ),
      ),
    );
  }
}
