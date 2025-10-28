import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart'; // Thêm thư viện fl_chart
import 'package:my_app/features/auth/data/models/user/user_model.dart';
import 'package:my_app/features/auth/presentation/pages/Admin/allusers_page.dart';
import 'package:my_app/features/auth/presentation/pages/Admin/statistics_page.dart';
import 'package:bloc/bloc.dart';
import 'user_state.dart';
import 'package:dio/dio.dart';

//xử lý thông tin người dùng với API
class UserCubit extends Cubit<UserState> {
  UserCubit({required this.dio}) : super(UserState.initial());
  final Dio dio;
  Future<void> fetchUsers() async {
    try {
      emit(state.copyWith(status: UserStatus.loading, errorMessage: ''));
      final response = await dio.get('https://api.example.com/users');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        final users = data.map((json) => UserModel.fromJson(json)).toList();
        emit(state.copyWith(status: UserStatus.success, users: users));
      } else {
        emit(
          state.copyWith(
            status: UserStatus.error,
            errorMessage: 'Failed to load users: ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      emit(
        state.copyWith(
          status: UserStatus.error,
          errorMessage: 'Dio error: ${e.message}',
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: UserStatus.error,
          errorMessage: 'Unexpected error: $e',
        ),
      );
    }
  }
}
