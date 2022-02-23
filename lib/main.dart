import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/constants/language_constants.dart';
import 'product/init/app/app_init.dart';
import 'product/init/router/app_router.dart';
import 'product/init/theme/app_theme.dart';

Future<void> main() async {
  await AppInitiliaze().initBeforeAppStart();
  runApp(
    EasyLocalization(
        supportedLocales: LanguageConstants.instance.supportedLocales,
        path: AppConstants.ASSETS_LANG_PATH,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp.router(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeManager.craeteTheme(AppThemeLight()),
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
      // child:,
    );
  }
}
