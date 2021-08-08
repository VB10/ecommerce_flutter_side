import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/theme/color_theme.dart';
import '../../../widget/buttons/sign_up.dart';
import '../view-model/sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
      model: SignUpViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, SignUpViewModel value) => buildScaffoldSignUp(value),
    );
  }

  Scaffold buildScaffoldSignUp(SignUpViewModel viewModel) {
    return Scaffold(
      body: LoginFormRow(child: SingleChildScrollView(child: buildWrapBody(viewModel))),
    );
  }

  Widget buildWrapBody(SignUpViewModel viewModel) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20,
      runSpacing: 20,
      children: [
        SpaceHeightBox(height: 0.02),
        buildCardForm(viewModel),
        SignUpButton(onPressed: () {
          viewModel.postUserRequest();
        }),
        buildLicanceArea(viewModel),
      ],
    );
  }

  Widget buildCardForm(SignUpViewModel viewModel) {
    return Card(
      child: Observer(
        builder: (_) => Form(
            key: viewModel.signUpFormKey,
            autovalidateMode: viewModel.formAutoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
              children: [
                IconFormTextField(
                  label: LocaleKeys.auth_email,
                  controller: viewModel.emailController,
                  iconPath: ImageConstatns.instance!.mailSVG,
                  validator: (value) => (value ?? '').isValidEmail ? null : 'error',
                ),
                IconFormTextField(
                  label: LocaleKeys.auth_userName,
                  controller: viewModel.userNameController,
                  iconPath: ImageConstatns.instance!.profileSVG,
                  validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
                ),
                IconFormTextField(
                  label: LocaleKeys.auth_password,
                  controller: viewModel.passwordController,
                  iconPath: ImageConstatns.instance!.passwordSVG,
                  secure: true,
                  validator: (value) => (value ?? '').isNotEmpty ? null : 'error',
                ),
              ],
            )),
      ),
    );
  }

  TextStyle? policyTextStyle(BuildContext context) =>
      context.textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w200);

  TextStyle? policyPressedTextStyle(BuildContext context) =>
      policyTextStyle(context)?.copyWith(color: ColorTheme.RED_BUTTON);

  Padding buildLicanceArea(SignUpViewModel viewModel) {
    // ContextExtension
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: viewModel.context.dynamicWidth(0.1)),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(style: policyTextStyle(viewModel.context), children: [
            TextSpan(text: "By creating an account, you agree to our ", children: [
              TextSpan(text: "Terms of Service ", style: policyPressedTextStyle(viewModel.context)),
              TextSpan(text: "and "),
              TextSpan(text: "Privacy Policy", style: policyPressedTextStyle(viewModel.context))
            ])
          ])),
    );
  }
}
