import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../view/authentication/signup/model/sign_up_model.dart';
import '../../init/lang/locale_keys.g.dart';
import '../button/login_button.dart';
import '../field/password_field.dart';

class SignupFormView extends StatefulWidget {
  const SignupFormView({Key? key, required this.onComplete}) : super(key: key);

  final Future<void> Function(SignUpModel model) onComplete;

  @override
  _SignupFormViewState createState() => _SignupFormViewState();
}

class _SignupFormViewState extends State<SignupFormView> {
  late final TextEditingController _userNameController;
  late final TextEditingController _userMailController;
  late final TextEditingController _passwordController;

  late final GlobalKey<FormState> _loginFormKey;

  late final bool _formAutoValidate;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _userMailController = TextEditingController();
    _passwordController = TextEditingController();

    _loginFormKey = GlobalKey<FormState>();

    _formAutoValidate = false;
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _userMailController.dispose();
    _passwordController.dispose();

    _loginFormKey.currentState?.dispose();
    super.dispose();
  }

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
      await widget.onComplete(
        SignUpModel(
          displayName: _userNameController.text,
          email: _userMailController.text.trim(),
          password: _passwordController.text,
        ),
      );
    } else {
      _changeValidate();
    }
  }

  void _changeValidate() {
    _formAutoValidate = true;
    setState(() {});
  }
}
