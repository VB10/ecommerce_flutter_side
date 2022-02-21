import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'text_theme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  String? fontFamily;

  @override
  TextStyle? bodyText1 = const TextStyle(fontSize: 12.0);

  @override
  TextStyle? bodyText2 = const TextStyle(fontSize: 10.0);

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline2 = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  TextStyle? headline3;

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6 = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  @override
  TextStyle? subtitle1 = const TextStyle(fontSize: 16.0);

  @override
  TextStyle? subtitle2 = const TextStyle(fontSize: 14.0);

  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {
    fontFamily = GoogleFonts.arimo().fontFamily;
    data = TextTheme(
            headline6: headline6,
            bodyText1: bodyText1,
            headline2: headline2,
            bodyText2: bodyText2,
            subtitle1: subtitle1,
            headline3: headline3,
            subtitle2: subtitle2)
        .apply(displayColor: primaryColor);
  }
}
