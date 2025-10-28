// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      chatId: json['chatId'] as String,
      senderId: json['senderId'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{
      'chatId': instance.chatId,
      'senderId': instance.senderId,
      'text': instance.text,
    };
