import 'package:flutter/material.dart';
import '../shadow/card_shadow.dart';
import 'package:kartal/kartal.dart';

class ShadowCard extends Container {
  ShadowCard({Key? key, required BuildContext context, required Widget child})
      : super(
          key: key,
          child: child,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(context.lowRadius),
              boxShadow: [CardShadow(context)],
              color: context.colorScheme.onSecondary),
        );

  ShadowCard.circle({Key? key, required BuildContext context, required Widget child})
      : super(
          key: key,
          child: child,
          decoration: BoxDecoration(
              shape: BoxShape.circle, boxShadow: [CardShadow(context)], color: context.colorScheme.onSecondary),
        );
}
