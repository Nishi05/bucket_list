import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/models/bucket_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bucket_list_controller.g.dart';

@riverpod
class BucketListController extends _$BucketListController {
  @override
  FutureOr<List<Bucket>> build() async {
    return [];
  }

  Future<List<Bucket>> fetch() async {
    return [];
  }

  Bucket? get(int id) {
    if (state.value == null) {
      return null;
    }
    try {
      return state.value!.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<void> createBucket(BucketDto bucketDto) async {
    state = AsyncValue.data([
      ...state.value ?? [],
      Bucket(
        id: state.value!.length + 1,
        title: bucketDto.title,
        description: bucketDto.description,
        scheduledAt: bucketDto.scheduledAt,
        priority: bucketDto.priority,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      )
    ]);
    return;
  }

  Future<void> updateBucket(int id, BucketDto bucketDto) async {
    state = AsyncValue.data([
      for (final bucket in state.value!)
        if (bucket.id == id)
          Bucket(
            id: bucket.id,
            title: bucketDto.title,
            description: bucketDto.description,
            scheduledAt: bucketDto.scheduledAt,
            priority: bucketDto.priority,
            createdAt: bucket.createdAt,
            updatedAt: DateTime.now(),
          )
        else
          bucket
    ]);
    return;
  }

  Future<void> deleteBucket(int id) async {
    state = AsyncValue.data(
      state.value!.where((element) => element.id != id).toList(),
    );
    return;
  }
}
