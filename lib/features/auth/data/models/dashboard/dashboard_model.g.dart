// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    _DashboardModel(
      totalStorageUsed: (json['totalStorageUsed'] as num).toInt(),
      totalFiles: (json['totalFiles'] as num).toInt(),
    );

Map<String, dynamic> _$DashboardModelToJson(_DashboardModel instance) =>
    <String, dynamic>{
      'totalStorageUsed': instance.totalStorageUsed,
      'totalFiles': instance.totalFiles,
    };
