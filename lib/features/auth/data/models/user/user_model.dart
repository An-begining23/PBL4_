import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';
@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String userId,
    required String userName,
    required String password,
    required String role,    
    required String avatar,
    required bool isActive,
    required bool isDeleted,
    required bool isOnline,
    required DateTime lastActive,
    required String accessToken,
    }) =
      _UserModel;

  factory UserModel.fromJson(dynamic json) => _$UserModelFromJson(json);
}
