import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:my_app/features/auth/data/api/auth/auth_api.dart';
import 'package:my_app/features/auth/data/dtos/login/login_request.dart';
import 'package:my_app/features/auth/storage/storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/features/auth/data/models/login/login_response.dart';
part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthApi _loginApi;

  // Khởi tạo LoginCubit
  LoginCubit(this._loginApi) : super(const LoginState.initial());

  // Phương thức login
  Future<void> login(LoginRequest loginRequest) async {
    emit(const LoginState.loading());
    try {
      // Gọi API đăng nhập
      final response = await _loginApi.login(loginRequest);

      // Kiểm tra và lấy accessToken từ response
      final accessToken = response.metadata.accessToken;

      // Lưu accessToken vào Storage
      await Storage.saveToken(accessToken);

      // Emit trạng thái thành công
      emit(LoginState.success(response));

    } on DioException catch (e) {
      final code = e.response?.statusCode;
      final data = e.response?.data;
      final msgFromServer = _extractErrorMessage(data);
      final msg = msgFromServer ?? 
          switch (code) {
            400 => 'Dữ liệu không hợp lệ.',
            401 => 'Email/Mật khẩu không đúng.',
            403 => 'Bạn không có quyền truy cập.',
            404 => 'Endpoint không tồn tại.',
            500 => 'Máy chủ bận. Thử lại sau.',
            _   => 'Đăng nhập thất bại. Vui lòng thử lại.'
          };
      emit(LoginState.failure(msg));
    } catch (_) {
      emit(const LoginState.failure('Có lỗi không xác định. Vui lòng thử lại.'));
    }
  }

  // Hàm để lấy thông báo lỗi
  String? _extractErrorMessage(dynamic data) {
    if (data is Map) {
      for (final k in ['message', 'error', 'msg']) {
        final v = data[k];
        if (v is String && v.trim().isNotEmpty) return v.trim();
      }
    }
    return null;
  }
}
