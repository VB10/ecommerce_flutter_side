import '../model/sign_up_model.dart';

abstract class ISignUserService {
  Future createUserRequest(SignUpModel model);
}
