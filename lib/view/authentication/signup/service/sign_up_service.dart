import '../../../../core/init/app/base/base_service.dart';
import '../../../../core/init/network/model/network_request_type.dart';
import '../model/sign_up_model.dart';
import 'ISignUpService.dart';

class SignUpService extends ISignUserService with BaseService {
  @override
  Future createUserRequest(SignUpModel model) async {
    return await networkManager.make<SignUpModel>(routePath.signUp,
        data: model,
        parserModel: SignUpModel(),
        method: NetworkRequestType.POST);
  }
}
