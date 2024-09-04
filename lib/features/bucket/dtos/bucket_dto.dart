import 'package:freezed_annotation/freezed_annotation.dart';

part 'bucket_dto.freezed.dart';
part 'bucket_dto.g.dart';

@freezed
class BucketDto with _$BucketDto {
  const factory BucketDto({
    int? id,
    required String title,
    required String description,
    required DateTime scheduledAt,
    required int priority,
  }) = _BucketDto;

  factory BucketDto.fromJson(Map<String, dynamic> json) =>
      _$BucketDtoFromJson(json);
}
