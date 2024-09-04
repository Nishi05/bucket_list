// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BucketDtoImpl _$$BucketDtoImplFromJson(Map<String, dynamic> json) =>
    _$BucketDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      scheduledAt: DateTime.parse(json['scheduledAt'] as String),
      priority: (json['priority'] as num).toInt(),
    );

Map<String, dynamic> _$$BucketDtoImplToJson(_$BucketDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'scheduledAt': instance.scheduledAt.toIso8601String(),
      'priority': instance.priority,
    };
