import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/chat/chat_model.dart';  // Chat model (cần tạo)

part 'chat_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/chats")  // Thay đổi URL nếu cần
abstract class ChatApi {
  factory ChatApi(Dio dio, {String baseUrl}) = _ChatApi;

  // [POST] Create Chat Room
  @POST("/")
  Future<ChatModel> createChat(
    @Body() Map<String, dynamic> data,  // Dữ liệu gửi lên để tạo phòng chat
  );

  // [GET] Get Chat Rooms by User ID
  @GET("/:userId")
  Future<List<ChatModel>> getUserChats(@Path() String userId);

  // [GET] Get Chat Room by memberIds (2 users)
  @GET("/find/{firstId}/{secondId}")
  Future<ChatModel> findChat(
    @Path() String firstId,
    @Path() String secondId,
  );
}
