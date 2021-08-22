import 'package:flutter_test/flutter_test.dart';
import 'package:gow_mobile/product/init/network/project_network_manager.dart';
import 'package:gow_mobile/product/model/email/email_model.dart';
import 'package:gow_mobile/product/service/auth/authentication_service.dart';
import 'package:gow_mobile/view/authentication/login/model/login_model.dart';

void main() {
  IAuthenticationService? loginService;
  setUp(() {
    loginService = AuthenticationService(ProjectNetworkManager.instance.networkManager);
  });
  test('loginUserRequest method test with auth user.', () async {
    final checkUser = await loginService?.loginUserRequest(LoginModel(email: 'vb@test.com', password: '123456'));

    expect(checkUser, isNotNull);
  });

  test('loginUserRequest method test with error secenario', () async {
    final checkUser = await loginService?.loginUserRequest(LoginModel(email: 'vb@test.com', password: '1223456'));

    expect(checkUser, isNotNull);
  });

  test('createUser method test with sucess', () async {
    final checkUser = await loginService?.createUser(LoginModel(email: 'yarita4619@aline9.com', password: '123456'));

    expect(checkUser, isNotNull);
  });

  test('forgotUser method test with sucess', () async {
    final checkUser = await loginService?.forgotPassword(EmailModel(email: 'yarita4619@aline9.com'));

    expect(checkUser, isNotNull);
  });
}
