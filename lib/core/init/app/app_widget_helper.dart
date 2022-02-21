import 'package:flutter/material.dart';

class AppWidgetHelper {
  static AppWidgetHelper? _instance;
  static AppWidgetHelper? get instance {
    _instance ??= AppWidgetHelper._init();
    return _instance;
  }

  AppWidgetHelper._init();

  final buttonBoxConstraint = const BoxConstraints(minHeight: 48);
}
