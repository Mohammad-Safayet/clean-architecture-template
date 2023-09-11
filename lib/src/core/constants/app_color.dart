import 'package:flutter/material.dart';

abstract class AppColors {
  static const colorSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffb39ddb),
    onPrimary: Color(0xff121014),
    primaryContainer: Color(0xff7e57c2),
    onPrimaryContainer: Color(0xfff3edfe),
    secondary: Color(0xff40c4ff),
    onSecondary: Color(0xff091314),
    secondaryContainer: Color(0xff0179b6),
    onSecondaryContainer: Color(0xffdff2fc),
    tertiary: Color(0xff80d8ff),
    onTertiary: Color(0xff0e1414),
    tertiaryContainer: Color(0xff00497b),
    onTertiaryContainer: Color(0xffdfebf3),
    error: Color(0xffcf6679),
    onError: Color(0xff140c0d),
    errorContainer: Color(0xffb1384e),
    onErrorContainer: Color(0xfffbe8ec),
    background: Color(0xff1a191c),
    onBackground: Color(0xffedeced),
    surface: Color(0xff1a191c),
    onSurface: Color(0xffedeced),
    surfaceVariant: Color(0xff242128),
    onSurfaceVariant: Color(0xffdcdcdd),
    outline: Color(0xffa39da3),
    shadow: Color(0xff000000),
    inverseSurface: Color(0xfffaf9fc),
    onInverseSurface: Color(0xff131313),
    inversePrimary: Color(0xff5c536d),
    surfaceTint: Color(0xffb39ddb),
  );

  static const colorSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff4527a0),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffd1c4e9),
    onPrimaryContainer: Color(0xff111013),
    secondary: Color(0xff00b0ff),
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xff9fcbf1),
    onSecondaryContainer: Color(0xff0e1114),
    tertiary: Color(0xff0091ea),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffcfe4ff),
    onTertiaryContainer: Color(0xff111314),
    error: Color(0xffb00020),
    onError: Color(0xffffffff),
    errorContainer: Color(0xfffcd8df),
    onErrorContainer: Color(0xff141213),
    background: Color(0xfff8f7fb),
    onBackground: Color(0xff090909),
    surface: Color(0xfff8f7fb),
    onSurface: Color(0xff090909),
    surfaceVariant: Color(0xfff1eff8),
    onSurfaceVariant: Color(0xff121213),
    outline: Color(0xff565656),
    shadow: Color(0xff000000),
    inverseSurface: Color(0xff121116),
    onInverseSurface: Color(0xfff5f5f5),
    inversePrimary: Color(0xffd1c0ff),
    surfaceTint: Color(0xff4527a0),
  );
}
