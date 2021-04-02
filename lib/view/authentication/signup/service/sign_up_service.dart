import '../model/sign_up_model.dart';
import 'ISignUpService.dart';

class SignUpService extends ISignUserService {
  @override
  Future createUserRequest(SignUpModel model) async {
    // return await networkManager!.make<SignUpModel>(routePath!.signUp,
    //     data: model,
    //     parserModel: SignUpModel(),
    //     method: NetworkRequestType.POST);
  }
}
