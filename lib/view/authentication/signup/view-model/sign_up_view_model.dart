import 'dart:developer' as developer;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/init/router/app_router.dart';
import '../../../../product/service/auth/authentication_service.dart';
import '../model/sign_up_model.dart';

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

  Future<void> createUser(SignUpModel model) async {
    final response = await _authenticationService.createUser(model);

    developer.log('$response');

    if (response != null) {
      context.replaceRoute(ShopTabRoute());
    }
  }
}
