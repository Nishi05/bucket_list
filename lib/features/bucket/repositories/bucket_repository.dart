import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/models/bucket_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bucket_repository.g.dart';

@riverpod
BucketRepository bucketRepository(BucketRepositoryRef ref) {
  return const BucketRepository();
}

class BucketRepository {
  const BucketRepository();

  Future<List<Bucket>> fetch() async {
    return [];
  }

  Bucket? get(int id) {
    return null;
  }

  Future<Bucket> createBucket(BucketDto bucketDto) async {
    return Bucket(
      id: 1,
      title: bucketDto.title,
      description: bucketDto.description,
      scheduledAt: bucketDto.scheduledAt,
      priority: bucketDto.priority,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Future<Bucket> updateBucket(int id, BucketDto bucketDto) async {
    return Bucket(
      id: 1,
      title: bucketDto.title,
      description: bucketDto.description,
      scheduledAt: bucketDto.scheduledAt,
      priority: bucketDto.priority,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }

  Future<void> deleteBucket(int id) async {
    return;
  }
}
