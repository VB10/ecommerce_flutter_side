import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/constants/language_constants.dart';
import 'core/init/theme/app_theme.dart';
import 'view/authentication/tab/authentication_tab_view.dart';

void main() => runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: LanguageConstants.instance!.supportedLocales,
    path: AppConstants.ASSETS_LANG_PATH));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: AuthenticationTabView(),
      theme: ApplicationTheme.instance!.lightTheme,
    );
  }
}
