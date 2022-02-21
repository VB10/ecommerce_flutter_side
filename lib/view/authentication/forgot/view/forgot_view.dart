import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/components/input/icon_form_field.dart';
import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../product/base/base_state.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../../../../product/widget/button/login_button.dart';
import '../viewModel/forgot_view_model.dart';

// ignore: use_key_in_widget_constructorss

class ForgotView extends StatelessWidget with BaseState {
  const ForgotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ForgotViewModel>(
      model: ForgotViewModel(AuthenticationService(networkManager)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, ForgotViewModel value) => buildBodyView(context, value),
    );
  }

  Column buildBodyView(BuildContext context, ForgotViewModel viewModel) {
    return Column(
      children: [
        const Spacer(flex: 2),
        Text(LocaleKeys.login_forgot.tr(),
            style: context.textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w200), textAlign: TextAlign.center),
        const Spacer(),
        buildCardForm(viewModel.textEditingController),
        const Spacer(),
        LoginButton(
          title: LocaleKeys.button_send.tr(),
          onCompleted: () async {
            await viewModel.sendToResetEmail();
          },
        ),
        const Spacer(flex: 10),
      ],
    );
  }

  Widget buildCardForm(TextEditingController controller) {
    return Card(
      child: IconFormTextField(
        label: ' ${LocaleKeys.label_mail.tr()}',
        iconPath: ImageConstatns.instance.mail,
        controller: controller,
        validator: (value) => (value ?? '').isValidEmail ? null : LocaleKeys.validator_errorEmail.tr(),
      ),
    );
  }
}
