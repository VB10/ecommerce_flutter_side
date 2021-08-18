import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../product/init/lang/locale_keys.g.dart';
import '../forgot/view/forgot_view.dart';
import '../login/view/login_view.dart';
import '../signup/view/sign_up_view.dart';

// ignore: use_key_in_widget_constructors
class AuthenticationTabView extends StatelessWidget {
  final List<Widget> _tabbarView = [const SignUpView(), LoginView(), ForgotView()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabbarView.length,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            buildTabBar(context),
            Expanded(flex: 8, child: _buildTabBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBody() => TabBarView(children: _tabbarView);

  Widget buildTabBar(BuildContext context) {
    return TabBar(
        indicatorColor: Colors.transparent,
        isScrollable: true,
        labelColor: context.colorScheme.onPrimary,
        unselectedLabelColor: context.colorScheme.onPrimary.withOpacity(0.1),
        unselectedLabelStyle: context.textTheme.headline4?.copyWith(fontWeight: FontWeight.w700),
        labelStyle: context.textTheme.headline4!.copyWith(fontWeight: FontWeight.w700),
        tabs: [
          Tab(text: LocaleKeys.tab_signUp.tr()),
          Tab(text: LocaleKeys.tab_login.tr()),
          Tab(text: LocaleKeys.tab_forgot.tr())
        ]);
  }
}
