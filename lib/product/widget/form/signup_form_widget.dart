import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../init/lang/locale_keys.g.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../view/authentication/login/model/login_model.dart';
import '../button/login_button.dart';
import '../field/password_field.dart';

import 'package:kartal/kartal.dart';
import 'package:easy_localization/easy_localization.dart';

class SignupFormView extends StatefulWidget {
  const SignupFormView({Key? key, required this.onComplete}) : super(key: key);
  final Future<void> Function(LoginModel model) onComplete;

  @override
  _SignupFormViewState createState() => _SignupFormViewState();
}

class _SignupFormViewState extends State<SignupFormView> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _userMailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _loginFormKey = GlobalKey();

  bool _formAutoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Form(
          autovalidateMode: _formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
          key: _loginFormKey,
          child: Padding(
            padding: context.paddingLow,
            child: Column(
              children: [
                IconFormTextField(
                  controller: _userNameController,
                  label: LocaleKeys.label_userName.tr(),
                  iconPath: ImageConstatns.instance.user,
                  validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
                ),
                IconFormTextField(
                  label: LocaleKeys.label_mail.tr(),
                  controller: _userMailController,
                  iconPath: ImageConstatns.instance.mail,
                  validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
                ),
                PasswordField(controller: _passwordController),
                LoginButton(
                  title: LocaleKeys.button_signup.tr(),
                  onCompleted: () async {
                    await _checkSignUpForm();
                  },
                )
              ],
            ),
          )),
    );
  }

  Future<void> _checkSignUpForm() async {
    if (_loginFormKey.currentState?.validate() ?? false) {
      await widget.onComplete(LoginModel(email: _userNameController.text, password: _passwordController.text));
    } else {
      _changeValidate();
    }
  }

  void _changeValidate() {
    _formAutoValidate = true;
    setState(() {});
  }
}
