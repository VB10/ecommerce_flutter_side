import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../../login/model/login_model.dart';

part 'sign_up_view_model.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store, BaseViewModel {
  late final IAuthenticationService _authenticationService;

  _SignUpViewModelBase(IAuthenticationService authenticationService) {
    _authenticationService = authenticationService;
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}

  Future<void> createUser(LoginModel model) async {
    final response = await _authenticationService.createUser(model);
  }
}
