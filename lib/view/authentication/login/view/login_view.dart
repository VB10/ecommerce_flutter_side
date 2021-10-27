import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/base/base_state.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../../../../product/widget/form/login_form_widget.dart';
import '../view-model/login_view_model.dart';

class LoginView extends StatelessWidget with BaseState {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, value) {
        return buildScaffold(value);
      },
      model: LoginViewModel(AuthenticationService(networkManager)),
      dispose: (model) {
        model.customDispose();
      },
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
    );
  }

  Scaffold buildScaffold(LoginViewModel viewModel) => Scaffold(
        body: SingleChildScrollView(
          child: buildLoginFormRow(viewModel),
        ),
      );

  Widget buildLoginFormRow(LoginViewModel viewModel) {
    return Wrap(
      runSpacing: viewModel.context.dynamicHeight(0.05),
      spacing: viewModel.context.dynamicHeight(0.01),
      direction: Axis.horizontal,
      children: [
        const SpaceHeightBox(height: 0.01),
        Card(child: LoginFormWidget(onComplete: (model) async {
          await viewModel.checkUserLoginRequest(model);
        })),
        buildHaveAccount(viewModel.context),
      ],
    );
  }

  Padding buildHaveAccount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: context.textTheme.subtitle1,
          children: [
            TextSpan(
              text: LocaleKeys.login_dontHaveAccount.tr(),
              children: [
                TextSpan(text: ' ${LocaleKeys.login_createAccount.tr()}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
