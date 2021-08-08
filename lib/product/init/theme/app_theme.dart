import 'package:flutter/material.dart';

import 'colors/IColorTheme.dart';
import 'text/ITextTheme.dart';
import 'text/text_theme_dark.dart';
import 'text/text_theme_light.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}

abstract class ThemeManager {
  static ThemeData craeteTheme(ITheme theme) => ThemeData(
      fontFamily: theme.textTheme.fontFamily,
      textTheme: theme.textTheme.data,
      cardColor: theme.colors.colorScheme?.onSecondary,
      bottomAppBarColor: theme.colors.scaffoldBackgroundColor,
      tabBarTheme: TabBarTheme(
        indicator: BoxDecoration(),
        labelColor: theme.colors.tabbarSelectedColor,
        unselectedLabelColor: theme.colors.tabbarNormalColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: theme.colors.colors.white, backgroundColor: theme.colors.colors.mediumGreyBold),
      appBarTheme: AppBarTheme(backgroundColor: theme.colors.appBarColor),
      scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
      colorScheme: theme.colors.colorScheme);
}

class AppThemeDark extends ITheme {
  @override
  late final ITextTheme textTheme;
  AppThemeDark() {
    textTheme = TextThemeDark(colors.colors.mediumGrey);
  }

  @override
  IColors get colors => DarkColors();
}

class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(colors.colors.mediumGrey);
  }

  @override
  IColors get colors => LightColors();
}
