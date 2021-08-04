import 'package:flutter/material.dart';

import '../../../core/components/input/icon_form_field.dart';
import '../../../core/init/constants/image_constants.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../view/authentication/login/model/login_model.dart';
import '../../../view/widget/buttons/sign_up.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key, required this.onComplete}) : super(key: key);
  final void Function(LoginModel model) onComplete;
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _loginFormKey = GlobalKey();

  bool formAutoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        key: _loginFormKey,
        child: Column(
          children: [
            IconFormTextField(
              controller: _userNameController,
              label: LocaleKeys.auth_email,
              iconPath: ImageConstatns.instance.profileSVG,
              validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
            ),
            IconFormTextField(
              controller: _passwordController,
              label: LocaleKeys.auth_password,
              iconPath: ImageConstatns.instance.passwordSVG,
              secure: true,
              validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
            ),
            SignUpButton(
              onPressed: () {
                _checkSignUpForm();
              },
            ).toLoginButton,
          ],
        ));
  }

  void _checkSignUpForm() {
    if (_loginFormKey.currentState?.validate() ?? false) {
      widget.onComplete(LoginModel(email: _userNameController.text, password: _passwordController.text));
    } else {
      formAutoValidate = true;
      setState(() {});
    }
  }
}
