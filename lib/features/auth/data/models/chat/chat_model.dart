import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
abstract class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String id,
    required List<String> members,  // Danh sách ID của các thành viên
  }) = _ChatModel;

  // Factory method để tạo ChatModel từ JSON
  factory ChatModel.fromJson(Map<String, dynamic> json) => _$ChatModelFromJson(json);
}
