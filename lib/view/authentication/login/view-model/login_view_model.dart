import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../model/login_model.dart';
import '../model/user_model.dart';
import '../service/login_service.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> loginFormKey = GlobalKey();
  GlobalKey<ScaffoldState> loginScaffoldKey = GlobalKey();
  LoginService _service = LoginService();

  @observable
  bool formAutoValidate = false;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginModel get loginModel => LoginModel(email: userNameController.text, password: passwordController.text);

  @observable
  String description = '';

  void setContext(BuildContext context) {
    this.context = context;
  }

  Future<void> checkUserLoginRequest() async {
    if (checkSignUpForm()) {
      final response = await _service.loginUserRequest(loginModel);

      // if (response is UserModel == false) {
      //   final errorModel = response as NetworkBaseError;
      //   loginScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(errorModel.message!)));
      // }
    }
  }

  @action
  bool checkSignUpForm() {
    if (loginFormKey.currentState!.validate()) {
      return true;
    } else {
      formAutoValidate = true;
      return false;
    }
  }
}
