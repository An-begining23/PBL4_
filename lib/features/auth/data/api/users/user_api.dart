import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/user/user_model.dart';  // Cần tạo UserModel tương ứng

part 'user_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/users")  // Thay đổi URL nếu cần
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  // [GET] Get all users (Admin only)
  @GET("/")
  Future<List<UserModel>> getAllUsers();

  // [GET] Get total number of friends by user ID
  @GET("/friends/counting")
  Future<int> getTotalFriends();

  // [GET] Get user by ID (User or Admin)
  @GET("/{id}")
  Future<UserModel> getUserById(@Path("id") String id);

  // [POST] Create user (Admin only)
  @POST("/")
  Future<UserModel> createUser(@Body() Map<String, dynamic> userData);

  // [PUT] Update user by ID (User or Admin)
  @PUT("/{id}")
  Future<UserModel> updateUser(
    @Path("id") String id,
    @Body() Map<String, dynamic> userData,
  );

  // [DELETE] Soft delete user by ID (Admin only)
  @DELETE("/softdelete/{id}")
  Future<void> softDeleteUser(@Path("id") String id);

  // [DELETE] Hard delete user by ID (Admin only)
  @DELETE("/{id}")
  Future<void> deleteUser(@Path("id") String id);

  // [POST] Send friend request
  @POST("/add-friend")
  Future<void> sendFriendRequest(@Body() Map<String, dynamic> data);

  // [POST] Accept friend request
  @POST("/accept-friend")
  Future<void> acceptFriendRequest(@Body() Map<String, dynamic> data);

  // [POST] Reject friend request
  @POST("/reject-friend")
  Future<void> rejectFriendRequest(@Body() Map<String, dynamic> data);
}
