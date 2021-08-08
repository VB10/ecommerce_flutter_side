import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/constants/language_constants.dart';
import 'core/init/theme/app_theme.dart';
import 'product/init/app/app_init.dart';
import 'view/authentication/tab/authentication_tab_view.dart';

Future<void> main() async {
  await AppInitiliaze().initBeforeAppStart();
  runApp(EasyLocalization(
      supportedLocales: LanguageConstants.instance.supportedLocales,
      path: AppConstants.ASSETS_LANG_PATH,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: AuthenticationTabView(),
      theme: ApplicationTheme.instance.lightTheme,
    );
  }
}
