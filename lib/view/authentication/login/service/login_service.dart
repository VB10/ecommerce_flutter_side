import '../model/login_model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService {
  @override
  Future loginUserRequest(LoginModel model) async {
    // return await networkManager!.send<UserModel>(routePath!.login,
    //     data: model, parserModel: UserModel(), method: NetworkRequestType.POST);
  }
}
