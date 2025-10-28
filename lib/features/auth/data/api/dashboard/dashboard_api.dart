import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:my_app/features/auth/data/models/dashboard/dashboard_model.dart';  // Cần tạo các model phù hợp

part 'dashboard_api.g.dart';

@RestApi(baseUrl: "http://127.0.0.1:4000/api/v1/dashboard")  // Thay đổi URL nếu cần
abstract class DashboardApi {
  factory DashboardApi(Dio dio, {String baseUrl}) = _DashboardApi;

  // [GET] Total Storage Used by User ID
  @GET("/total-storage/{userId}")
  Future<DashboardModel> getTotalStorageUsedByUserId(
    @Path("userId") String userId
  );

  // [GET] Total Number of Users (Admin only)
  @GET("/total-users")
  Future<int> getTotalUsers();

  // [GET] Total Number of Files per Day (Admin only)
  @GET("/total-files-per-day")
  Future<int> getTotalFilesPerDay();

  // [GET] Total Storage Used by All Users (Admin only)
  @GET("/total-storage")
  Future<int> getTotalStorageUsedAll();
}
