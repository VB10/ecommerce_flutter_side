import 'package:flutter/material.dart';

import 'color_theme.dart';

class ApplicationTheme {
  static ApplicationTheme? _instance;
  static ApplicationTheme get instance {
    _instance ??= ApplicationTheme._init();

    return _instance!;
  }

  final textTheme = ThemeData.light().textTheme;
  ApplicationTheme._init();

  ThemeData get lightTheme {
    return ThemeData(
      cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      scaffoldBackgroundColor: ColorTheme.BACKGROUND_COLOR,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: textTheme.headline4!.copyWith(
          color: ColorTheme.TEXT_LOGIN_COLOR.withOpacity(0.5),
          letterSpacing: 1,
        ),
      ),
      textTheme: TextTheme(
        headline2: textTheme.headline2!.copyWith(color: ColorTheme.BACKGROUND_COLOR),
        headline4: textTheme.headline4!.copyWith(color: ColorTheme.BACKGROUND_COLOR),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
          primary: ColorTheme.RED_BUTTON,
          surface: Colors.white,
        ),
      ),
    );
  }
}
