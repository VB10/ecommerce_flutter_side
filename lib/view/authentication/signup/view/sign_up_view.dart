import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/base/base_state.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/init/widget/form/signup_form_widget.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../view-model/sign_up_view_model.dart';

class SignUpView extends StatelessWidget with BaseState {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpViewModel>(
      model: SignUpViewModel(AuthenticationService(networkManager)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, SignUpViewModel value) => buildScaffoldSignUp(value),
    );
  }

  Scaffold buildScaffoldSignUp(SignUpViewModel viewModel) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 20,
          runSpacing: 20,
          children: [
            const SpaceHeightBox(height: 0.02),
            SignupFormView(onComplete: (model) async {
              await viewModel.createUser(model);
            }),
            buildLicanceArea(viewModel),
          ],
        ),
      ),
    );
  }

  Padding buildLicanceArea(SignUpViewModel viewModel) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: viewModel.context.dynamicWidth(0.1)),
      child: RichText(
          textAlign: TextAlign.center,
          text:
              TextSpan(style: viewModel.context.textTheme.subtitle2?.copyWith(fontWeight: FontWeight.w200), children: [
            TextSpan(text: LocaleKeys.register_createAccountLabel.tr(), children: [
              TextSpan(
                  text: ' ${LocaleKeys.register_termsAndPrivaciy.tr()}',
                  style: viewModel.context.textTheme.subtitle2
                      ?.copyWith(fontWeight: FontWeight.w200, color: viewModel.context.colorScheme.onError)),
            ])
          ])),
    );
  }
}
