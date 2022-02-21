import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget? page;
  FadeRoute({this.page, RouteSettings? settings})
      : super(
          settings: settings,
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) =>
              page!,
          transitionDuration: const Duration(milliseconds: 1000),
          transitionsBuilder:
              (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
                  FadeTransition(opacity: animation, child: child),
        );
}
