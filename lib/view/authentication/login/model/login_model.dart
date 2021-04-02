import 'package:gow_mobile/core/init/network/model/network_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable(nullable: false)
class LoginModel extends NetworkBaseModel<LoginModel> {
  final String email;
  final String password;

  LoginModel(this.email, this.password);

  @override
  LoginModel fromJson(Map<String, Object> json) => _$LoginModelFromJson(json);

  @override
  Map<String, Object> toJson() => _$LoginModelToJson(this);
}
