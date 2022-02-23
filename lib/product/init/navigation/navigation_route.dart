import 'package:flutter/material.dart';

import '../../../view/authentication/tab/authentication_tab_view.dart';
import '../../../view/common/splash/view/splash_view.dart';
import '../../../view/shop/tab/shop_tab_view.dart';
import 'animation/fade_navigate.dart';
import 'navigation_enums.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (NavigationEnums.deafult.normalValue(args.name)) {
      case NavigationEnums.deafult:
        return _normalNavigate(const SplashPage());

      case NavigationEnums.home:
        return _normalNavigate(ShopTabPage());

      case NavigationEnums.login:
        return _fadeRouteNavigate(AuthenticationTabPage());

      default:
        throw Exception('$this not found');
    }
  }

  MaterialPageRoute _normalNavigate(Widget widget,
      {RouteSettings? settings, bool isFullScreen = false}) {
    return MaterialPageRoute(
        builder: (context) => widget, settings: settings, fullscreenDialog: isFullScreen);
  }

  PageRoute _fadeRouteNavigate(Widget widget, {RouteSettings? settings}) {
    return FadeRoute(page: widget, settings: settings);
  }
}
