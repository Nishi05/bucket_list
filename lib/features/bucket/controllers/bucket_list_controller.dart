import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/models/bucket_model.dart';
import 'package:bucket_list/features/bucket/repositories/bucket_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bucket_list_controller.g.dart';

@riverpod
class BucketListController extends _$BucketListController {
  @override
  FutureOr<List<Bucket>> build() {
    return ref.read(bucketRepositoryProvider).fetch();
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
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(bucketRepositoryProvider).createBucket(bucketDto);
      return ref.read(bucketRepositoryProvider).fetch();
    });
  }

  Future<void> updateBucket(int id, BucketDto bucketDto) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(bucketRepositoryProvider).updateBucket(id, bucketDto);
      return ref.read(bucketRepositoryProvider).fetch();
    });
  }

  Future<void> deleteBucket(int id) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(bucketRepositoryProvider).deleteBucket(id);
      return ref.read(bucketRepositoryProvider).fetch();
    });
  }
}
