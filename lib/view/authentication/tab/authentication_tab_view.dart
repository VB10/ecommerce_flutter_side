import 'package:gow_mobile/core/components/container/random_container_widget.dart';
import 'package:gow_mobile/core/extensions/context_extension.dart';
import 'package:gow_mobile/core/init/theme/color_theme.dart';
import 'package:gow_mobile/view/authentication/forgot/view/forgot_view.dart';
import 'package:gow_mobile/view/authentication/login/view/login_view.dart';
import 'package:gow_mobile/view/authentication/signup/view/sign_up_view.dart';
import 'package:flutter/material.dart';

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
        unselectedLabelStyle: context.theme.headline4.copyWith(
          fontWeight: FontWeight.w700,
        ),
        labelStyle: context.theme.headline4.copyWith(fontWeight: FontWeight.w700),
        tabs: [Tab(text: "Sign Up"), Tab(text: "Login In"), Tab(text: "Forgot Password")]);
  }
}
