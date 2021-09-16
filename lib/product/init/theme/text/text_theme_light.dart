import 'package:flutter/material.dart';

import 'ITextTheme.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  String? fontFamily;

  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3 = const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6 = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  @override
  TextStyle? subtitle1 = const TextStyle(fontSize: 16.0);

  @override
  TextStyle? subtitle2;

  @override
  final Color? primaryColor;

  TextThemeLight(this.primaryColor) {
    data = TextTheme(
      headline6: headline6,
      subtitle1: subtitle1,
      headline3: headline3,
    ).apply(displayColor: primaryColor);
  }
}
