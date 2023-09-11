import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_text_styles.dart';
import 'package:clean_architecture/src/core/constants/app_values.dart';
import 'package:clean_architecture/src/modules/shared/widgets/asset_image_view.dart';
import 'package:clean_architecture/src/modules/shared/mixin/base_widget.dart';

class NavDrawerHeader extends StatelessWidget with BaseWidgetMixin {
  NavDrawerHeader({super.key});

  @override
  Widget body(BuildContext context) {
    return  DrawerHeader(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppValues.padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              padding: const EdgeInsets.only(
                top: AppValues.padding_6,
              ),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(
                  AppValues.radiusXLarge,
                ),
              ),
              child: const AssetImageView(
                fileName: "profile_placeholder.png",
                type: AssetImageType.image,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: AppValues.padding_6,
              ),
              child: Text(
                "Jhon Doe",
                style: AppTextStyles.drawerHeaderTitle,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: AppValues.padding_6,
              ),
              child: Text(
                "jhondoe56@example.com",
                style: AppTextStyles.drawerHeaderSubTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}