import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
abstract class FileModel with _$FileModel {
  const factory FileModel({
    required String imageUrl,
    required String imageName,
    required String status,
    required String publicId,
    required String userId,
    required String mimeType,
    required int size,
  }) = _FileModel;

  // Factory constructor to create FileModel from JSON
  factory FileModel.fromJson(Map<String, dynamic> json) => _$FileModelFromJson(json);
}
