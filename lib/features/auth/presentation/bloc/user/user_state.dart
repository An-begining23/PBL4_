import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';
enum UserStatus {
  initial,
  loading,
  success,
  error,
}
class UserState extends Equatable {
  final UserStatus status;
  final List<UserModel> users;
  final String errorMessage;

  const UserState({
    required this.status,
    required this.users,
    required this.errorMessage,
  });

  factory UserState.initial() {
    return const UserState(
      status: UserStatus.initial,
      users: [],
      errorMessage: '',
    );
  }

  UserState copyWith({
    UserStatus? status,
    List<UserModel>? users,
    String? errorMessage,
  }) {
    return UserState(
      status: status ?? this.status,
      users: users ?? this.users,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, users, errorMessage];
}