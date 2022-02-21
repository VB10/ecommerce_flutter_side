import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../size/radius_size.dart';

class CustomCard extends Container {
  CustomCard({
    Key? key,
    required BuildContext context,
    required Widget child,
  }) : super(
            key: key,
            child: child,
            decoration: BoxDecoration(
                borderRadius: RadiusSize.borderRadiusAllX,
                boxShadow: [
                  BoxShadow(
                      color: context.appTheme.cardTheme.shadowColor ?? Colors.white,
                      offset: const Offset(0, 8),
                      blurRadius: 15,
                      spreadRadius: 0)
                ],
                color: context.colorScheme.onSecondary));
}
