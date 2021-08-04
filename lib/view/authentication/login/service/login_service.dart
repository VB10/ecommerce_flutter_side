import 'package:vexana/vexana.dart';

import '../model/login_model.dart';

abstract class ILoginService {
  ILoginService(this.networkManager);

  Future loginUserRequest(LoginModel model);
  final INetworkManager networkManager;
}

class LoginService extends ILoginService {
  LoginService(INetworkManager networkManager) : super(networkManager);

  @override
  Future loginUserRequest(LoginModel model) async {}
}
