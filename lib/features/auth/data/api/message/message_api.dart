import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/message/message_model.dart';  // Cần tạo MessageModel

part 'message_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/messages")  // Thay đổi URL nếu cần
abstract class MessageApi {
  factory MessageApi(Dio dio, {String baseUrl}) = _MessageApi;

  // [POST] Create Message
  @POST("/")
  Future<MessageModel> createMessage(
    @Body() Map<String, dynamic> data,  // Dữ liệu gửi lên tạo tin nhắn
  );

  // [GET] Get Messages by Chat Room ID
  @GET("/:chatId")
  Future<List<MessageModel>> getMessages(@Path("chatId") String chatId);
}
