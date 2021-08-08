import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gow_mobile/product/init/lang/locale_keys.g.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/init/theme/color_theme.dart';
import '../forgot/view/forgot_view.dart';
import '../login/view/login_view.dart';
import '../signup/view/sign_up_view.dart';

class AuthenticationTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [Spacer(), buildTabBar(context), buildExpandedTabBody()],
        ),
      ),
    );
  }

  Expanded buildExpandedTabBody() {
    return Expanded(flex: 8, child: TabBarView(children: [SignUpView(), LoginView(), ForgotView()]));
  }

  TabBar buildTabBar(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.transparent,
        isScrollable: true,
        labelColor: ColorTheme.TEXT_LOGIN_COLOR,
        unselectedLabelColor: ColorTheme.TEXT_LOGIN_COLOR.withOpacity(0.1),
        unselectedLabelStyle: context.theme.headline4!.copyWith(
          fontWeight: FontWeight.w700,
        ),
        labelStyle: context.theme.headline4!.copyWith(fontWeight: FontWeight.w700),
        tabs: [
          Tab(text: LocaleKeys.tab_signUp.tr()),
          Tab(text: LocaleKeys.tab_login.tr()),
          Tab(text: LocaleKeys.tab_forgot.tr())
        ]);
  }
}
