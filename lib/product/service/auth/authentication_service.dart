import 'package:vexana/vexana.dart';

import '../../../view/authentication/login/model/login_model.dart';
import '../../model/email/email_model.dart';
import '../../model/response/normal_response.dart';
import '../../model/user/user_auth_model.dart';

enum _AuthtenicationPathEnum { login, register, forgot }

extension on _AuthtenicationPathEnum {
  String get rawValue {
    switch (this) {
      case _AuthtenicationPathEnum.login:
        return '/login';
      case _AuthtenicationPathEnum.register:
        return '/register';
      case _AuthtenicationPathEnum.forgot:
        return '/forgot';
    }
  }
}

abstract class IAuthenticationService {
  final INetworkManager networkManager;
  IAuthenticationService(this.networkManager);

  Future<UserAuthModel?> loginUserRequest(LoginModel model);
  Future<UserAuthModel?> createUser(LoginModel model);

  Future<NormalResponseModel?> forgotPassword(EmailModel model);
}

class AuthenticationService extends IAuthenticationService {
  AuthenticationService(INetworkManager networkManager) : super(networkManager);

  @override
  Future<UserAuthModel?> loginUserRequest(LoginModel model) async {
    final response = await networkManager.send<UserAuthModel, UserAuthModel>(_AuthtenicationPathEnum.login.rawValue,
        parseModel: UserAuthModel(), method: RequestType.POST, data: model);

    return response.data;
  }

  @override
  Future<UserAuthModel?> createUser(LoginModel model) async {
    final response = await networkManager.send<UserAuthModel, UserAuthModel>(_AuthtenicationPathEnum.register.rawValue,
        parseModel: UserAuthModel(), method: RequestType.POST, data: model);

    return response.data;
  }

  @override
  Future<NormalResponseModel?> forgotPassword(EmailModel model) async {
    final response = await networkManager.send<NormalResponseModel, NormalResponseModel>(
        _AuthtenicationPathEnum.forgot.rawValue,
        parseModel: NormalResponseModel(),
        method: RequestType.POST,
        data: model);

    return response.data;
  }
}
