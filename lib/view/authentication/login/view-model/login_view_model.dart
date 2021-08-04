import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<ScaffoldState> loginScaffoldKey = GlobalKey();

  @observable
  String description = '';

  @override
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  Future<void> checkUserLoginRequest() async {}
}
