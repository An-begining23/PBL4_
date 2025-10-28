// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FileModel _$FileModelFromJson(Map<String, dynamic> json) => _FileModel(
  imageUrl: json['imageUrl'] as String,
  imageName: json['imageName'] as String,
  status: json['status'] as String,
  publicId: json['publicId'] as String,
  userId: json['userId'] as String,
  mimeType: json['mimeType'] as String,
  size: (json['size'] as num).toInt(),
);

Map<String, dynamic> _$FileModelToJson(_FileModel instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'imageName': instance.imageName,
      'status': instance.status,
      'publicId': instance.publicId,
      'userId': instance.userId,
      'mimeType': instance.mimeType,
      'size': instance.size,
    };
