import 'package:flutter_test/flutter_test.dart';
import 'package:gow_mobile/product/init/network/project_network_manager.dart';
import 'package:gow_mobile/product/model/email/email_model.dart';
import 'package:gow_mobile/product/service/auth/authentication_service.dart';
import 'package:gow_mobile/view/authentication/login/model/login_model.dart';
import 'package:gow_mobile/view/authentication/signup/model/sign_up_model.dart';

void main() {
  IAuthenticationService? loginService;
  setUp(() {
    loginService = AuthenticationService(ProjectNetworkManager.instance.networkManager);
  });
  test('loginUserRequest method test with auth user.', () async {
    final checkUser = await loginService?.loginUserRequest(
      LoginModel(email: 'ali@veli.com', password: '123456'),
    );

    expect(checkUser, isNotNull);
  });

  test('loginUserRequest method test with error secenario', () async {
    final checkUser = await loginService?.loginUserRequest(
      LoginModel(email: 'ali@veli.com', password: '12345666'),
    );

    expect(checkUser, isNull);
  });

  test('createUser method test with success', () async {
    final checkUser = await loginService?.createUser(
      SignUpModel(displayName: 'ali', email: 'ali@mali.com', password: '123456'),
    );

    expect(checkUser, isNotNull);
  });

  test('createUser method test with error secenario', () async {
    final checkUser = await loginService?.createUser(
      SignUpModel(displayName: 'ali', email: 'ali@sali', password: '123456'),
    );

    expect(checkUser, isNull);
  });

  test('createUser method test with error secenario', () async {
    final checkUser = await loginService?.createUser(
      SignUpModel(displayName: 'ali', email: 'ali@sali.com', password: '1'),
    );

    expect(checkUser, isNull);
  });

  test('forgotPassword method test with success', () async {
    final checkUser = await loginService?.forgotPassword(
      EmailModel(email: 'ali@veli.com'),
    );

    expect(checkUser, isNotNull);
  });
}
