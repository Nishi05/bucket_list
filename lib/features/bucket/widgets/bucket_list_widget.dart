import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:bucket_list/features/bucket/widgets/bucket_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BucketListWidget extends ConsumerWidget {
  const BucketListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buckets = ref.watch(bucketListControllerProvider);
    return switch (buckets) {
      AsyncData(:final value) => Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              final bucket = value[index];
              return BucketItem(
                id: bucket.id,
              );
            },
          ),
        ),
      AsyncError() => const Text('Error'),
      _ => const CircularProgressIndicator(),
    };
  }
}
