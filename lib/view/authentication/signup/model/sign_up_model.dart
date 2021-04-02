import 'package:gow_mobile/core/init/network/model/network_base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable(nullable: false)
class SignUpModel extends NetworkBaseModel<SignUpModel> {
  final String email;
  final String password;
  final String name;

  SignUpModel({this.email, this.password, this.name});

  @override
  SignUpModel fromJson(Map<String, Object> json) => _$SignUpModelFromJson(json);

  @override
  Map<String, Object> toJson() => _$SignUpModelToJson(this);
}
