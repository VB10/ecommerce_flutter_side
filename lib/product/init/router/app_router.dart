import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../view/authentication/tab/authentication_tab_view.dart';
import '../../../view/common/splash/view/splash_view.dart';
import '../../../view/shop/tab/shop_tab_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: AuthenticationTabPage),
    AutoRoute(page: ShopTabPage),
  ],
)
class AppRouter extends _$AppRouter {}
