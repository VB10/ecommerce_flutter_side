import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gow_mobile/product/init/lang/locale_keys.g.dart';

import '../../../../core/components/container/space_height_container.dart';
import '../../../../core/components/row/login_form_row.dart';
import '../../../../core/components/span/text_span_red.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/widget/form/login_form_widget.dart';
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
          LoginFormWidget(onComplete: (model) {}),
          buildHaveAccount,
        ],
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
              text: LocaleKeys.login_dontHaveAccount.tr(),
              children: [
                TextSpan(text: '/n'),
                TextSpan(text: LocaleKeys.login_createAccount.tr()).red(_loginViewModel.context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
