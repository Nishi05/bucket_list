import 'package:bucket_list/common/util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bucket_model.freezed.dart';
part 'bucket_model.g.dart';

@freezed
class Bucket with _$Bucket {
  const factory Bucket({
    required int id,
    required String title,
    required String description,
    required DateTime scheduledAt,
    required int priority,
    required DateTime createdAt,
    required DateTime updatedAt,
    DateTime? completedAt,
    String? completedDescription,
  }) = _Bucket;
  const Bucket._();

  String get priorityText {
    return List.generate(
      priority,
      (index) => '⭐️',
    ).join();
  }

  String get formattedScheduledAt {
    return '${scheduledAt.year}/${scheduledAt.month}/${scheduledAt.day} (残り${remainingDays(scheduledAt)}日)';
  }

  factory Bucket.fromJson(Map<String, dynamic> json) => _$BucketFromJson(json);
}
