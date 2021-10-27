import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../model/login_model.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  late final IAuthenticationService _authenticationService;
  @observable
  String description = '';

  _LoginViewModelBase(IAuthenticationService service) {
    _authenticationService = service;
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}

  Future<void> checkUserLoginRequest(LoginModel model) async {
    final response = await _authenticationService.loginUserRequest(model);
  }

  void customDispose() {}
}
