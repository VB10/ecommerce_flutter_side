import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/init/router/app_router.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    // TODO: Need to check if the user logged in or not
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(context.durationSlow);

    context.replaceRoute(AuthenticationTabRoute());
  }
}
