import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.g.dart';
part 'message_model.freezed.dart';
@freezed
abstract class MessageModel with _$MessageModel{
  const factory MessageModel({
    required String chatId,
    required String senderId,
    required String text,
    }) =
      _MessageModel;

  factory MessageModel.fromJson(dynamic json) => _$MessageModelFromJson(json);
}
