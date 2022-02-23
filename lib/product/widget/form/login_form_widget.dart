import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../view/authentication/login/model/login_model.dart';
import '../../init/lang/locale_keys.g.dart';
import '../button/login_button.dart';
import '../field/email_field.dart';
import '../field/password_field.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key, required this.onComplete}) : super(key: key);

  final Future<void> Function(LoginModel model) onComplete;

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late final TextEditingController _userNameController;
  late final TextEditingController _passwordController;

  late final GlobalKey<FormState> _loginFormKey;

  late final bool _formAutoValidate;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();

    _loginFormKey = GlobalKey<FormState>();

    _formAutoValidate = false;
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();

    _loginFormKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        autovalidateMode: _formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
        key: _loginFormKey,
        child: Column(
          children: [
            EmailField(
              textEditingController: _userNameController,
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
      await widget.onComplete(
        LoginModel(
          email: _userNameController.text.trim(),
          password: _passwordController.text,
        ),
      );
    } else {
      if (_formAutoValidate) return;
      _formAutoValidate = true;
      setState(() {});
    }
  }
}
