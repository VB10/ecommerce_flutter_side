import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class TitleText extends Text {
  TitleText(String data, {Key? key, bool isSubTitle = false, required BuildContext context})
      : super(data,
            key: key,
            style: isSubTitle
                ? context.textTheme.headline6
                : context.textTheme.headline2?.copyWith(
                    color: context.colorScheme.onPrimary,
                  ));
}
