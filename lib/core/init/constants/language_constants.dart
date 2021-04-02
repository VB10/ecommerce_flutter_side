import 'package:flutter/material.dart';

class LanguageConstants {
  static LanguageConstants? _instance;
  static LanguageConstants? get instance {
    if (_instance == null) {
      _instance = LanguageConstants._init();
    }
    return _instance;
  }

  LanguageConstants._init();

  final enLocale = Locale("en", "US");

  List<Locale> get supportedLocales => [enLocale];
}
