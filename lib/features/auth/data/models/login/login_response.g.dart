// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      status: json['status'] as String,
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'metadata': instance.metadata,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) =>
    _Metadata(accessToken: json['accessToken'] as String);

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
};
