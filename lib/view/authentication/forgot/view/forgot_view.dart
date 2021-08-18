import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/init/widget/button/login_button.dart';

// ignore: use_key_in_widget_constructors
class ForgotView extends StatefulWidget {
  @override
  _ForgotViewState createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  @override
  Widget build(BuildContext context) {
    return LoginFormRow(
      child: Column(
        children: [
          const Spacer(flex: 2),
          Text(LocaleKeys.login_forgot.tr(),
              style: context.textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w200), textAlign: TextAlign.center),
          const Spacer(),
          buildCardForm,
          const Spacer(),
          LoginButton(
            title: LocaleKeys.button_send.tr(),
            onCompleted: () async {},
          ),
          const Spacer(flex: 10),
        ],
      ),
    );
  }

  Widget get buildCardForm {
    return Card(
      child: IconFormTextField(
        label: ' ${LocaleKeys.label_mail.tr()}',
        iconPath: ImageConstatns.instance.mail,
        validator: (value) => (value ?? '').isValidEmail ? null : LocaleKeys.validator_errorEmail.tr(),
      ),
    );
  }
}
