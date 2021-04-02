import 'package:json_annotation/json_annotation.dart';

import '../../../../core/init/network/model/network_base_model.dart';

part 'user_model.g.dart';

@JsonSerializable(nullable: false)
class UserModel extends NetworkBaseModel<UserModel> {
  final String email;
  final String password;
  @JsonKey(name: "_id")
  final String id;
  final String name;

  UserModel({this.id, this.name, this.email, this.password});

  @override
  UserModel fromJson(Map<String, Object> json) => _$UserModelFromJson(json);

  @override
  Map<String, Object> toJson() => _$UserModelToJson(this);
}
