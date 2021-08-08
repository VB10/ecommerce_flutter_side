import 'package:flutter/material.dart';

abstract class ITextTheme {
  final Color? primaryColor;
  late final TextTheme data;
  TextStyle? headline1;
  TextStyle? headline3;
  TextStyle? headline4;
  TextStyle? headline5;
  TextStyle? headline6;
  TextStyle? subtitle1;
  TextStyle? subtitle2;
  TextStyle? bodyText1;
  TextStyle? bodyText2;
  String? fontFamily;

  ITextTheme(this.primaryColor);
}
