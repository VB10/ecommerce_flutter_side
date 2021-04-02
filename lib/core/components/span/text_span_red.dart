import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../../init/theme/color_theme.dart';

extension TextSpanRed on TextSpan {
  TextStyle _redSpanText(BuildContext context) => context.theme.subtitle2!.copyWith(fontWeight: FontWeight.w200, color: ColorTheme.RED_BUTTON);

  TextSpan red(BuildContext context) {
    return TextSpan(text: this.text, style: _redSpanText(context));
  }
}
