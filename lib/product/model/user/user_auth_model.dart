import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user_auth_model.g.dart';

@JsonSerializable()
class UserAuthModel extends INetworkModel<UserAuthModel> {
  String? uid;
  String? displayName;
  String? photoURL;
  String? email;
  StsTokenManager? stsTokenManager;

  UserAuthModel({
    this.uid,
    this.displayName,
    this.photoURL,
    this.email,
    this.stsTokenManager,
  });

  @override
  UserAuthModel fromJson(Map<String, dynamic> json) {
    return _$UserAuthModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$UserAuthModelToJson(this);
  }
}

@JsonSerializable()
class StsTokenManager extends INetworkModel<StsTokenManager> {
  String? apiKey;
  String? refreshToken;
  String? accessToken;
  int? expirationTime;

  StsTokenManager({this.apiKey, this.refreshToken, this.accessToken, this.expirationTime});

  @override
  factory StsTokenManager.fromJson(Map<String, dynamic> json) {
    return _$StsTokenManagerFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StsTokenManagerToJson(this);
  }

  @override
  StsTokenManager fromJson(Map<String, dynamic> json) {
    return _$StsTokenManagerFromJson(json);
  }
}
