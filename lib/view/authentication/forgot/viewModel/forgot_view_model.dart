import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/model/email/email_model.dart';
import '../../../../product/service/auth/authentication_service.dart';

part 'forgot_view_model.g.dart';

class ForgotViewModel = _ForgotViewModelBase with _$ForgotViewModel;

abstract class _ForgotViewModelBase with Store, BaseViewModel {
  late final IAuthenticationService _authenticationService;

  final TextEditingController textEditingController = TextEditingController();
  _ForgotViewModelBase(IAuthenticationService authenticationService) {
    _authenticationService = authenticationService;
  }

  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}

  Future<void> sendToResetEmail() async {
    final response =
        await _authenticationService.forgotPassword(EmailModel(email: textEditingController.text));

    developer.log('${response?.message}');
  }
}
