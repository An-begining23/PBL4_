// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => _ChatModel(
  id: json['id'] as String,
  members: (json['members'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ChatModelToJson(_ChatModel instance) =>
    <String, dynamic>{'id': instance.id, 'members': instance.members};
