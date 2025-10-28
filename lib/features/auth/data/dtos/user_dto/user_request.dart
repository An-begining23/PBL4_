import 'package:equatable/equatable.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';
class UserRequest {
  final String id;
  final String name;
  final String avatarurl;
  final String username;
  final String password;
  final String email;
  final String phone;
  UserRequest({
    required this.id,
    required this.name,
    required this.avatarurl,
    required this.username,
    required this.password,
    required this.email,
    required this.phone,
  });
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'avatar_url': avatarurl,
      'username': username,
      'password': password,
      'email': email,
      'phone': phone,
    };
  }
}