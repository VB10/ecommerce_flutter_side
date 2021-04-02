import '../../../../core/init/app/base/base_service.dart';
import '../../../../core/init/network/model/network_request_type.dart';
import '../model/login_model.dart';
import '../model/user_model.dart';
import 'ILoginService.dart';

class LoginService extends ILoginService with BaseService {
  @override
  Future loginUserRequest(LoginModel model) async {
    return await networkManager.make<UserModel>(routePath.login,
        data: model, parserModel: UserModel(), method: NetworkRequestType.POST);
  }
}
