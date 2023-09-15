import 'package:flutter/material.dart';

import 'package:clean_architecture/src/core/constants/app_values.dart';

abstract class AppTextStyles {
  static const navigationBarLable = TextStyle(
    height: AppValues.height_16,
    fontSize: AppValues.fontSize_12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
  );

  static const captions = TextStyle(
    height: AppValues.height_16,
    fontSize: AppValues.fontSize_12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
  );

  static const title = TextStyle(
    height: AppValues.height_24,
    fontSize: AppValues.fontSize_16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  );

  static const drawerHeaderTitle = TextStyle(
    height: AppValues.height_16,
    fontSize: AppValues.fontSize_22,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
  );

  static const drawerHeaderSubTitle = TextStyle(
    height: AppValues.height_16,
    fontSize: AppValues.fontSize_14,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w400,
  );

  static const titleBig = TextStyle(
    height: AppValues.height_28,
    fontSize: AppValues.fontSize_24,
    letterSpacing: 0.00,
    fontWeight: FontWeight.w500,
  );

  static const bodyLarge = TextStyle(
    height: AppValues.height_24,
    fontSize: AppValues.fontSize_16,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w600,
  );

  static const body = TextStyle(
    height: AppValues.height_20,
    fontSize: AppValues.fontSize_14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
  );

  static const bodySmall = TextStyle(
    height: AppValues.height_16,
    fontSize: AppValues.fontSize_12,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
  );

  static const appBarTitleLarge = TextStyle(
    height: AppValues.height_28,
    fontSize: AppValues.fontSize_22,
    letterSpacing: 0.0,
    fontWeight: FontWeight.w400,
  );

  static const appBarTitle = TextStyle(
    height: AppValues.height_24,
    fontSize: AppValues.fontSize_16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
  );

  static const appBarTitleSmall = TextStyle(
    height: AppValues.height_20,
    fontSize: AppValues.fontSize_14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
  );
}
