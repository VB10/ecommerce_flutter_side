import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/string_extension.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/theme/color_theme.dart';
import '../../../widget/buttons/sign_up.dart';
import '../view-model/sign_up_view_model.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpViewModel _signUpViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
        builder: (context, value) {
          _signUpViewModel = value;
          return buildScaffoldSignUp;
        },
        model: SignUpViewModel());
  }

  Scaffold get buildScaffoldSignUp {
    return Scaffold(
      body: LoginFormRow(child: SingleChildScrollView(child: buildWrapBody)),
    );
  }

  Widget get buildWrapBody {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20,
      runSpacing: 20,
      children: [
        SpaceHeightBox(height: 0.02),
        buildCardForm,
        SignUpButton(onPressed: () {
          _signUpViewModel.postUserRequest();
        }),
        buildLicanceArea(),
      ],
    );
  }

  Widget get buildCardForm {
    return Card(
      child: Observer(
        builder: (_) => Form(
            key: _signUpViewModel.signUpFormKey,
            autovalidate: _signUpViewModel.formAutoValidate,
            child: Column(
              children: [
                IconFormTextField(
                  label: LocaleKeys.auth_email,
                  controller: _signUpViewModel.emailController,
                  iconPath: ImageConstatns.instance.mailSVG,
                  validator: (value) => value.isValidEmail,
                ),
                IconFormTextField(
                  label: LocaleKeys.auth_userName,
                  controller: _signUpViewModel.userNameController,
                  iconPath: ImageConstatns.instance.profileSVG,
                  validator: (value) => value.isValidUserName,
                ),
                IconFormTextField(
                  label: LocaleKeys.auth_password,
                  controller: _signUpViewModel.passwordController,
                  iconPath: ImageConstatns.instance.passwordSVG,
                  secure: true,
                  validator: (value) => value.isValidPassword,
                ),
              ],
            )),
      ),
    );
  }

  TextStyle get policyTextStyle =>
      context.theme.subtitle2.copyWith(fontWeight: FontWeight.w200);

  TextStyle get policyPressedTextStyle =>
      policyTextStyle.copyWith(color: ColorTheme.RED_BUTTON);

  Padding buildLicanceArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(style: policyTextStyle, children: [
            TextSpan(
                text: "By creating an account, you agree to our ",
                children: [
                  TextSpan(
                      text: "Terms of Service ", style: policyPressedTextStyle),
                  TextSpan(text: "and "),
                  TextSpan(
                      text: "Privacy Policy", style: policyPressedTextStyle)
                ])
          ])),
    );
  }
}
