import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:bucket_list/features/bucket/models/bucket_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bucket_controller.g.dart';

@riverpod
Bucket? getBucket(GetBucketRef ref, int id) {
  final bucket = ref.watch(bucketListControllerProvider.notifier).get(id);
  return bucket;
}
