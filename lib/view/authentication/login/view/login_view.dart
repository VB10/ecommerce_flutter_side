import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/components/span/text_span_red.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/string_extension.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../widget/buttons/sign_up.dart';
import '../view-model/login_view_model.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginViewModel _loginViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, value) {
        return buildScaffold();
      },
      model: LoginViewModel(),
      onModelReady: (model) {
        _loginViewModel = model;
        model.setContext(context);
      },
    );
  }

  Scaffold buildScaffold() => Scaffold(key: _loginViewModel.loginScaffoldKey, body: buildSingleChildScrollView());

  SingleChildScrollView buildSingleChildScrollView() => SingleChildScrollView(child: buildLoginFormRow());

  LoginFormRow buildLoginFormRow() {
    return LoginFormRow(
      child: Wrap(
        runSpacing: context.height * 0.05,
        spacing: context.height * 0.1,
        direction: Axis.horizontal,
        children: [
          SpaceHeightBox(height: 0.01),
          buildCardForm,
          SignUpButton(
            onPressed: () {
              _loginViewModel.checkUserLoginRequest();
            },
          ).toLoginButton,
          buildHaveAccount,
        ],
      ),
    );
  }

  Widget get buildCardForm {
    return Observer(
      builder: (context) => Card(
        child: Form(
            autovalidateMode: _loginViewModel.formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
            key: _loginViewModel.loginFormKey,
            child: Column(
              children: [
                IconFormTextField(
                  controller: _loginViewModel.userNameController,
                  label: LocaleKeys.auth_email,
                  iconPath: ImageConstatns.instance!.profileSVG,
                  validator: (value) => value?.isValidEmail,
                ),
                IconFormTextField(
                  controller: _loginViewModel.passwordController,
                  label: LocaleKeys.auth_password,
                  iconPath: ImageConstatns.instance!.passwordSVG,
                  secure: true,
                  validator: (value) => value?.isValidPassword,
                ),
              ],
            )),
      ),
    );
  }

  TextStyle get policyTextStyle => _loginViewModel.context.theme.subtitle2!.copyWith(fontWeight: FontWeight.w200);

  Padding get buildHaveAccount {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _loginViewModel.context.width * 0.1),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: policyTextStyle,
          children: [
            TextSpan(
              text: "Don't have an account? Swipe right to \n ",
              children: [
                TextSpan(text: "craete a new account").red(_loginViewModel.context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
