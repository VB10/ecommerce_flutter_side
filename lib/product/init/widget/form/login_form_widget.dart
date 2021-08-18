import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../view/authentication/login/model/login_model.dart';
import '../../lang/locale_keys.g.dart';
import '../button/login_button.dart';
import '../field/password_field.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key, required this.onComplete}) : super(key: key);
  final Future<void> Function(LoginModel model) onComplete;
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _loginFormKey = GlobalKey();

  bool _formAutoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: _formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        key: _loginFormKey,
        child: Column(
          children: [
            IconFormTextField(
              controller: _userNameController,
              label: LocaleKeys.label_mail,
              iconPath: ImageConstatns.instance.user,
              validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
            ),
            PasswordField(controller: _passwordController),
            LoginButton(
              title: LocaleKeys.tab_login.tr(),
              onCompleted: () async {
                await _checkSignUpForm();
              },
            )
          ],
        ));
  }

  Future<void> _checkSignUpForm() async {
    if (_loginFormKey.currentState?.validate() ?? false) {
      await widget.onComplete(LoginModel(email: _userNameController.text, password: _passwordController.text));
    } else {
      if (_formAutoValidate) return;
      _formAutoValidate = true;
      setState(() {});
    }
  }
}
