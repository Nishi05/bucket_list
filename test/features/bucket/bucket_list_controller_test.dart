import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/models/bucket_model.dart';
import 'package:bucket_list/features/bucket/repositories/bucket_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';

class Listener<T> extends Mock {
  void call(T? previous, T next);
}

class MockBucketRepository extends Mock implements BucketRepository {}

void main() {
  final now = DateTime.now();

  final List<Bucket> buckets = [
    Bucket(
      id: 1,
      title: 'オーロラを見たい',
      description: '北欧に行ってオーロラを見てみたい',
      scheduledAt: now,
      priority: 5,
      createdAt: now,
      updatedAt: now,
    ),
  ];

  final bucket = Bucket(
    id: 1,
    title: 'オーロラを見たい',
    description: '北欧に行ってオーロラを見てみたい',
    scheduledAt: now,
    priority: 5,
    createdAt: now,
    updatedAt: now,
  );

  final bucketDto = BucketDto(
    title: 'オーロラを見たい',
    description: '北欧に行ってオーロラを見てみたい',
    scheduledAt: now,
    priority: 5,
  );

  ProviderContainer makeProviderContainer(
      MockBucketRepository mockBucketRepository) {
    final container = ProviderContainer(overrides: [
      bucketRepositoryProvider.overrideWithValue(mockBucketRepository),
    ]);
    addTearDown(container.dispose);
    return container;
  }

  group(
    'Bucket listテスト',
    () {
      setUpAll(() {
        registerFallbackValue(const AsyncLoading<List<Bucket>>());

        registerFallbackValue([
          Bucket(
            id: 1,
            title: 'オーロラを見てみたい',
            description: '北欧に行ってオーロラを見てみたい',
            scheduledAt: now,
            priority: 5,
            createdAt: now,
            updatedAt: now,
          )
        ]);
      });

      test(
        'State Flow',
        () async {
          final bucketRepository = MockBucketRepository();

          when(bucketRepository.fetch).thenAnswer((_) async => buckets);
          final container = makeProviderContainer(bucketRepository);
          final listener = Listener<AsyncValue<List<Bucket>>>();

          container.listen(
            bucketListControllerProvider,
            listener,
            fireImmediately: true,
          );

          final data = AsyncData<List<Bucket>>(buckets);
          const loading = AsyncLoading<List<Bucket>>();

          await container.read(bucketListControllerProvider.future);

          verifyInOrder(
            [
              () => listener(null, loading),
              () => listener(loading, data),
            ],
          );
        },
      );

      test('Create', () async {
        final bucketRepository = MockBucketRepository();

        when(() => bucketRepository.createBucket(bucketDto))
            .thenAnswer((_) async => bucket);

        when(bucketRepository.fetch).thenAnswer((_) async => buckets);
        final container = makeProviderContainer(bucketRepository);

        await container
            .read(bucketListControllerProvider.notifier)
            .createBucket(
              bucketDto,
            );

        await expectLater(
          container.read(bucketListControllerProvider.future),
          completion(
            buckets,
          ),
        );
        verify(() => bucketRepository.createBucket(bucketDto)).called(1);
        verify(bucketRepository.fetch).called(2);
      });

      test('Update', () async {
        final bucketRepository = MockBucketRepository();

        when(() => bucketRepository.updateBucket(1, bucketDto))
            .thenAnswer((_) async => bucket);

        when(bucketRepository.fetch).thenAnswer((_) async => buckets);
        final container = makeProviderContainer(bucketRepository);

        await container
            .read(bucketListControllerProvider.notifier)
            .updateBucket(
              1,
              bucketDto,
            );

        await expectLater(
          container.read(bucketListControllerProvider.future),
          completion(
            buckets,
          ),
        );
        verify(() => bucketRepository.updateBucket(1, bucketDto)).called(1);
        verify(bucketRepository.fetch).called(2);
      });

      test('Delete', () async {
        final bucketRepository = MockBucketRepository();

        when(() => bucketRepository.deleteBucket(1))
            .thenAnswer((_) async => {});

        when(bucketRepository.fetch).thenAnswer((_) async => []);
        final container = makeProviderContainer(bucketRepository);

        await container
            .read(bucketListControllerProvider.notifier)
            .deleteBucket(
              1,
            );

        await expectLater(
          container.read(bucketListControllerProvider.future),
          completion(
            [],
          ),
        );
        verify(() => bucketRepository.deleteBucket(1)).called(1);
        verify(bucketRepository.fetch).called(2);
      });
    },
  );
}


 // verify(
          //   () => listener(null, loading),
          // );

          // final bucket = await controller.createBucket(
          //   BucketDto(
          //     title: 'オーロラを見てみたい',
          //     description: '北欧に行ってオーロラを見てみたい',
          //     scheduledAt: now,
          //     priority: 5,
          //   ),
          // );

          // verify(
          //   () => listener(loading, any(that: isA<AsyncData<List<Bucket>>>())),
          // );

          // verify(
          //   () => listener(
          //     AsyncData<List<Bucket>>([bucket]),
          //     const AsyncData<List<Bucket>>([]),
          //   ),
          // );

          // verifyInOrder([
          //   // transition from loading state to data
          //   () => listener(const AsyncLoading<List<Bucket>>(),
          //       AsyncData<List<Bucket>>([bucket])),
          // ]);
          // Create
          // final bucket = await controller.createBucket(
          //   BucketDto(
          //     title: 'オーロラを見てみたい',
          //     description: '北欧に行ってオーロラを見てみたい',
          //     scheduledAt: now,
          //     priority: 5,
          //   ),
          // );

          // print(bucket);
          // // expect(bucket, isNotNull);
          // final bucket2 = await container.read(provider.notifier).createBucket(
          //       BucketDto(
          //         title: 'スイスで美しい風景を見てみたい',
          //         description: 'スイスの山々を見てみたい',
          //         scheduledAt: now,
          //         priority: 4,
          //       ),
          //     );
          // print(bucket2);
          // Read
          // final bucket =
          //     container.read(bucketListControllerProvider.notifier).get(1);

          // expect(bucket, isNotNull);
          // expect(bucket?.title, 'オーロラを見てみたい');
          // expect(bucket?.description, '北欧に行ってオーロラを見てみたい');
          // expect(bucket?.scheduledAt, now);
          // expect(bucket?.priority, 5);

          // Read All
          // final buckets =
          //     await container.read(bucketListControllerProvider.future);
          // print(buckets);
          // expect(buckets.length, 2);
          // for (final bucket in buckets) {
          //   switch (bucket.id) {
          //     case 1:
          //       expect(bucket.title, 'オーロラを見てみたい');
          //     case 2:
          //       expect(bucket.title, 'スイスで美しい風景を見てみたい');
          //     default:
          //       fail('存在しないIDです');
          //   }
          // }