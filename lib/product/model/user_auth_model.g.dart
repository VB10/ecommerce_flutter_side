// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAuthModel _$UserAuthModelFromJson(Map<String, dynamic> json) {
  return UserAuthModel(
    uid: json['uid'] as String?,
    displayName: json['displayName'] as String?,
    photoURL: json['photoURL'] as String?,
    email: json['email'] as String?,
    stsTokenManager: json['stsTokenManager'] == null
        ? null
        : StsTokenManager.fromJson(
            json['stsTokenManager'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserAuthModelToJson(UserAuthModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
      'email': instance.email,
      'stsTokenManager': instance.stsTokenManager,
    };

StsTokenManager _$StsTokenManagerFromJson(Map<String, dynamic> json) {
  return StsTokenManager(
    apiKey: json['apiKey'] as String?,
    refreshToken: json['refreshToken'] as String?,
    accessToken: json['accessToken'] as String?,
    expirationTime: json['expirationTime'] as int?,
  );
}

Map<String, dynamic> _$StsTokenManagerToJson(StsTokenManager instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
      'expirationTime': instance.expirationTime,
    };
