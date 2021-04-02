import '../model/login_model.dart';

abstract class ILoginService {
  Future loginUserRequest(LoginModel model);
}
