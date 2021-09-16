import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/constants/language_constants.dart';
import 'product/init/app/app_init.dart';
import 'product/init/theme/app_theme.dart';
import 'view/shop/home/shop_home_view.dart';

Future<void> main() async {
  await AppInitiliaze().initBeforeAppStart();
  runApp(
    EasyLocalization(
        supportedLocales: LanguageConstants.instance.supportedLocales,
        path: AppConstants.ASSETS_LANG_PATH,
        child: MyApp()),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: ShopHomeView(),
      // builder: (context, child) {
      //   return MediaQuery(
      //       data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child ?? const SizedBox());
      // },
      // routes: {
      //   '/': (_) => const SplashView(),
      //   '/auth': (_) => AuthenticationTabView(),
      // },
      theme: ThemeManager.craeteTheme(AppThemeLight()),
    );
  }
}
