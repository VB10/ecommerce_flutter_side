import 'package:flutter/material.dart';

import 'colors/color_themes.dart';
import 'text/text_theme.dart';
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
        brightness: theme.colors.colorScheme?.brightness,
        canvasColor: Colors.red,
        cardTheme: CardTheme(shadowColor: theme.colors.cardShadowColor),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: theme.colors.colors.bitterSweet),
        elevatedButtonTheme:
            ElevatedButtonThemeData(style: ElevatedButton.styleFrom(onPrimary: theme.colors.colorScheme?.onSecondary)),
        tabBarTheme: TabBarTheme(
          labelPadding: EdgeInsets.zero,
          indicator: const BoxDecoration(),
          labelColor: theme.colors.tabbarSelectedColor,
          unselectedLabelColor: theme.colors.tabbarNormalColor,
        ),
        iconTheme: IconThemeData(color: theme.colors.colors.darkGrey, size: 24),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: theme.textTheme.subtitle2,
        ),
        textSelectionTheme: TextSelectionThemeData(cursorColor: theme.colors.cursorColor),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: theme.colors.colors.white, backgroundColor: theme.colors.colors.mediumGreyBold),
        appBarTheme: AppBarTheme(color: theme.colors.appBarColor, elevation: 0, brightness: theme.colors.brightness),
        bottomAppBarTheme: BottomAppBarTheme(color: theme.colors.bottomAppBarColor),
        scaffoldBackgroundColor: theme.colors.scaffoldBackgroundColor,
        colorScheme: theme.colors.colorScheme,
      );
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
    textTheme = TextThemeLight(colors.textColor);
  }

  @override
  IColors get colors => LightColors();
}
