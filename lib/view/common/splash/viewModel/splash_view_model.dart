import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/init/navigation/navigation_enums.dart';
import '../../../../product/init/navigation/navigation_manager.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(context.durationSlow);
    context.read<NavigationService>().navigateToPageClear(path: NavigationEnums.login.rawValue);
  }
}
