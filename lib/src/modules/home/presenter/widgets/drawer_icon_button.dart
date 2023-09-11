import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_values.dart';
import 'package:clean_architecture/src/modules/shared/widgets/asset_image_view.dart';
import 'package:clean_architecture/src/modules/shared/widgets/ripple_button.dart';

class DrawerIconButton extends StatelessWidget {
  const DrawerIconButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        padding: const EdgeInsets.only(
          left: AppValues.paddingSmall,
        ),
        child: RippleButton(
          onTap: () => callback(context),
          child: AssetImageView(
            fileName: "menu.svg",
            type: AssetImageType.svg,
            height: AppValues.icon_28,
            width: AppValues.icon_28,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      );
    });
  }
}
