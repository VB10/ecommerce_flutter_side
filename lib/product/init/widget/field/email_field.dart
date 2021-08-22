import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../lang/locale_keys.g.dart';

class EmailField extends StatelessWidget {
  final TextEditingController textEditingController;
  const EmailField({Key? key, required this.textEditingController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconFormTextField(
      controller: textEditingController,
      label: LocaleKeys.label_mail.tr(),
      iconPath: ImageConstatns.instance.user,
      validator: (value) => (value ?? '').isValidEmail ? null : LocaleKeys.validator_errorEmail.tr(),
    );
  }
}
