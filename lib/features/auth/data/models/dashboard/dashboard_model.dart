import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.freezed.dart';
part 'dashboard_model.g.dart';

@freezed
abstract class DashboardModel with _$DashboardModel {
  const factory DashboardModel({
    required int totalStorageUsed,  // Tổng dung lượng lưu trữ
    required int totalFiles,        // Tổng số tệp
  }) = _DashboardModel;

  // Factory method để tạo DashboardModel từ JSON
  factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);
}
