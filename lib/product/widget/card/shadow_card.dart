import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class ShadowCard extends Container {
  ShadowCard({Key? key, required BuildContext context, required Widget child})
      : super(
          key: key,
          child: child,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(context.lowRadius),
              boxShadow: [
                BoxShadow(
                    color: context.colorScheme.primaryVariant,
                    offset: const Offset(0, 8),
                    blurRadius: 15,
                    spreadRadius: 0)
              ],
              color: context.colorScheme.onSecondary),
        );
}
