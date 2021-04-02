import 'package:flutter/material.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../widget/buttons/sign_up.dart';

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
          Spacer(flex: 2),
          Text(
            "Enter the email address you used to create your account and we will email you a link to reset your password",
            style: titleTextStyle,
            textAlign: TextAlign.center,
          ),
          Spacer(),
          buildCardForm,
          Spacer(),
          SignUpButton(
            onPressed: () {},
          ).toSendEmailButton,
          Spacer(flex: 10),
        ],
      ),
    );
  }

  TextStyle get titleTextStyle => context.theme.subtitle2!.copyWith(fontWeight: FontWeight.w200);

  Card get buildCardForm {
    return Card(
      child: Form(
          child: Column(
        children: [
          IconFormTextField(
            label: " EMAIL",
            iconPath: ImageConstatns.instance!.mailSVG,
          ),
        ],
      )),
    );
  }
}
