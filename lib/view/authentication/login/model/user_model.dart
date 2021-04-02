import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends INetworkModel<UserModel> {
  final String? email;
  final String? password;
  @JsonKey(name: '_id')
  final String? id;
  final String? name;

  UserModel({this.id, this.name, this.email, this.password});

  @override
  UserModel fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  @override
  Map<String, Object?> toJson() => _$UserModelToJson(this);
}
