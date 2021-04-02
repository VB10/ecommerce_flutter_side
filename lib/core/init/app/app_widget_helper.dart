import 'package:flutter/material.dart';

class AppWidgetHelper {
  static AppWidgetHelper _instance;
  static AppWidgetHelper get instance {
    if (_instance == null) {
      _instance = AppWidgetHelper._init();
    }
    return _instance;
  }

  AppWidgetHelper._init();

  final buttonBoxConstraint = BoxConstraints(minHeight: 48);
}
