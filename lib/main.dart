import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/constants/language_constants.dart';
import 'product/init/app/app_init.dart';
import 'product/init/navigation/navigation_manager.dart';
import 'product/init/navigation/navigation_route.dart';
import 'product/init/theme/app_theme.dart';
import 'view/shop/tab/shop_tab_view.dart';

Future<void> main() async {
  await AppInitiliaze().initBeforeAppStart();
  runApp(
    MultiProvider(
      providers: [Provider(create: (context) => NavigationService())],
      child: EasyLocalization(
          supportedLocales: LanguageConstants.instance.supportedLocales,
          path: AppConstants.ASSETS_LANG_PATH,
          child: MyApp()),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: ShopTabView(),
          onGenerateRoute: NavigationRoute().generateRoute,
          navigatorKey: context.read<NavigationService>().navigatorKey,
          theme: ThemeManager.craeteTheme(AppThemeLight()),
        );
      },
      // child:,
    );
  }
}
