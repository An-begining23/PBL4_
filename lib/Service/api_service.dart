import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          'http://10.0.2.2:4000', // Android emulator; iOS: http://localhost:4000
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    ),
  );

  Future<Map<String, dynamic>> login(String email, String password) async {
    final res = await _dio.post(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    return Map<String, dynamic>.from(res.data);
  }

  Future<Map<String, dynamic>> register(
    String email,
    String password,
    String name,
  ) async {
    final res = await _dio.post(
      '/auth/register',
      data: {'email': email, 'password': password, 'name': name},
    );
    return Map<String, dynamic>.from(res.data);
  }
}
