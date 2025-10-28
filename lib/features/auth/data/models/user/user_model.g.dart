// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  userId: json['userId'] as String,
  userName: json['userName'] as String,
  password: json['password'] as String,
  role: json['role'] as String,
  avatar: json['avatar'] as String,
  isActive: json['isActive'] as bool,
  isDeleted: json['isDeleted'] as bool,
  isOnline: json['isOnline'] as bool,
  lastActive: DateTime.parse(json['lastActive'] as String),
  accessToken: json['accessToken'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'password': instance.password,
      'role': instance.role,
      'avatar': instance.avatar,
      'isActive': instance.isActive,
      'isDeleted': instance.isDeleted,
      'isOnline': instance.isOnline,
      'lastActive': instance.lastActive.toIso8601String(),
      'accessToken': instance.accessToken,
    };
