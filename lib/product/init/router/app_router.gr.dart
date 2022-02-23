// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    AuthenticationTabRoute.name: (routeData) {
      final args = routeData.argsAs<AuthenticationTabRouteArgs>(
          orElse: () => const AuthenticationTabRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: AuthenticationTabPage(key: args.key));
    },
    ShopTabRoute.name: (routeData) {
      final args = routeData.argsAs<ShopTabRouteArgs>(
          orElse: () => const ShopTabRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ShopTabPage(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthenticationTabRoute.name,
            path: '/authentication-tab-page'),
        RouteConfig(ShopTabRoute.name, path: '/shop-tab-page')
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthenticationTabPage]
class AuthenticationTabRoute extends PageRouteInfo<AuthenticationTabRouteArgs> {
  AuthenticationTabRoute({Key? key})
      : super(AuthenticationTabRoute.name,
            path: '/authentication-tab-page',
            args: AuthenticationTabRouteArgs(key: key));

  static const String name = 'AuthenticationTabRoute';
}

class AuthenticationTabRouteArgs {
  const AuthenticationTabRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AuthenticationTabRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ShopTabPage]
class ShopTabRoute extends PageRouteInfo<ShopTabRouteArgs> {
  ShopTabRoute({Key? key})
      : super(ShopTabRoute.name,
            path: '/shop-tab-page', args: ShopTabRouteArgs(key: key));

  static const String name = 'ShopTabRoute';
}

class ShopTabRouteArgs {
  const ShopTabRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ShopTabRouteArgs{key: $key}';
  }
}
