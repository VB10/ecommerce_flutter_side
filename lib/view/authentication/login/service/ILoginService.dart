import 'package:gow_mobile/view/authentication/login/model/login_model.dart';

abstract class ILoginService {
  Future loginUserRequest(LoginModel model);
}
