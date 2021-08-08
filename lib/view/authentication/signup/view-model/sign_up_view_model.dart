import '../../../../core/init/app/base/base_view_model.dart';
import '../model/sign_up_model.dart';
import '../service/sign_up_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'sign_up_view_model.g.dart';

class SignUpViewModel = _SignUpViewModelBase with _$SignUpViewModel;

abstract class _SignUpViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  SignUpService _service = SignUpService();

  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @observable
  String description = '';

  @observable
  bool formAutoValidate = false;
  @override
  void setContext(BuildContext context) => this.context = context;
  void init() {}

  Future<void> postUserRequest() async {
    if (checkSignUpForm()) {
      final response = await _service.createUserRequest(
          SignUpModel(email: emailController.text, password: passwordController.text, name: userNameController.text));

      print(response);
    }
  }

  @action
  bool checkSignUpForm() {
    if (signUpFormKey.currentState!.validate()) {
      return true;
    } else {
      formAutoValidate = true;
      return false;
    }
  }
}
