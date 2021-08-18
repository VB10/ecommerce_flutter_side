import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/init/widget/form/login_form_widget.dart';
import '../view-model/login_view_model.dart';

// ignore: use_key_in_widget_constructors
class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      builder: (context, value) {
        return buildScaffold(value);
      },
      model: LoginViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
    );
  }

  Scaffold buildScaffold(LoginViewModel viewModel) => Scaffold(
        key: viewModel.loginScaffoldKey,
        body: buildSingleChildScrollView(viewModel.context),
      );

  SingleChildScrollView buildSingleChildScrollView(BuildContext context) => SingleChildScrollView(
        child: buildLoginFormRow(context),
      );

  LoginFormRow buildLoginFormRow(BuildContext context) {
    return LoginFormRow(
      child: Wrap(
        runSpacing: context.height * 0.05,
        spacing: context.height * 0.1,
        direction: Axis.horizontal,
        children: [
          const SpaceHeightBox(height: 0.01),
          Card(child: LoginFormWidget(onComplete: (model) async {})),
          buildHaveAccount(context),
        ],
      ),
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
