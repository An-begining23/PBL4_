import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/file/file_model.dart';  // Import FileModel
import 'dart:io';  // Import File for upload

part 'file_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/files")  // Thay đổi URL nếu cần
abstract class FileApi {
  factory FileApi(Dio dio, {String baseUrl}) = _FileApi;

  // [POST] Create Post (Upload file)
  @POST("/")
  @MultiPart()
  Future<FileModel> createPost(
    @Part() File file, // Sử dụng đối tượng File cho file upload (từ dart:io)
  );

  // [GET] Get Posts by User ID
  @GET("/userId/{userId}")
  Future<List<FileModel>> getPostsByUser(@Path("userId") String userId);

  // [GET] Get All Posts of Myself and Friends
  @GET("/all-of-mine-and-friends")
  Future<List<FileModel>> getAllPostsOfMyselfAndFriends();

  // [GET] Get Post by ID
  @GET("/{id}")
  Future<FileModel> getPostById(@Path("id") String id);

  // [PUT] Update Post by ID
  @PUT("/{id}")
  Future<FileModel> updatePost(
    @Path("id") String id,
    @Body() Map<String, dynamic> data,  // Dữ liệu cập nhật
  );

  // [DELETE] Soft Delete Post by ID
  @DELETE("/delete-soft/{id}")
  Future<void> softDeletePost(@Path("id") String id);

  // [DELETE] Hard Delete Post by ID (Admin only)
  @DELETE("/delete-hard/{id}")
  Future<void> hardDeletePost(@Path("id") String id);

  // [GET] Download File by ID
  @GET("/download/{id}")
  Future<Response> downloadFile(@Path("id") String id);

  // [POST] Upload Multiple Files
  @POST("/multiple")
  @MultiPart()
  Future<List<FileModel>> uploadMultipleFiles(
    @Part() List<File> files,  // Upload nhiều file
  );
}
