import 'package:gow_mobile/core/extensions/context_extension.dart';
import 'package:gow_mobile/core/init/theme/color_theme.dart';
import 'package:flutter/material.dart';

extension TextSpanRed on TextSpan {
  TextStyle _redSpanText(BuildContext context) => context.theme.subtitle2.copyWith(fontWeight: FontWeight.w200, color: ColorTheme.RED_BUTTON);

  TextSpan red(BuildContext context) {
    return TextSpan(text: this.text, style: _redSpanText(context));
  }
}
