import 'package:dio/dio.dart';
import 'package:my_app/features/auth/data/dtos/login/login_request.dart';
import 'package:my_app/features/auth/data/dtos/register/register_request.dart';
import 'package:my_app/features/auth/data/models/login/login_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/auth")  // Thay đổi URL nếu cần
abstract class AuthApi {
  factory AuthApi(Dio dio, {String baseUrl}) = _AuthApi;

  // [POST] /register
  @POST("/register")
  Future<UserModel> register(
    @Body() RegisterRequest registerRequest,
  );

  // [POST] /login
  @POST("/login")
  Future<LoginResponse> login(
    @Body() LoginRequest loginRequest,
  );

  // [POST] /logout
  @POST("/logout")
  Future<void> logout();

  // [POST] /refreshAccessToken
  @POST("/refreshAccessToken")
  Future<UserModel> refreshAccessToken();

  // [POST] /forgot-password
  @POST("/forgot-password")
  Future<void> forgotPassword(@Body() Map<String, dynamic> data);

  // [POST] /verify-otp
  @POST("/verify-otp")
  Future<void> verifyOtp(@Body() Map<String, dynamic> data);

  // [GET] /get-profile
  @GET("/get-profile")
  Future<UserModel> getProfile();
}
