import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel extends INetworkModel<SignUpModel> {
  final String? email;
  final String? password;
  final String? name;

  SignUpModel({this.email, this.password, this.name});

  @override
  SignUpModel fromJson(Map<String, dynamic> json) => _$SignUpModelFromJson(json);

  @override
  Map<String, Object?> toJson() => _$SignUpModelToJson(this);
}
