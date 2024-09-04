import 'package:bucket_list/features/bucket/controllers/bucket_controller.dart';
import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BucketDetailScreen extends ConsumerWidget {
  const BucketDetailScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bucket = ref.watch(getBucketProvider(id));
    print(bucket);
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.push('/bucket/edit', extra: id);
            },
            child: const Text(
              '編集',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              ref.read(bucketListControllerProvider.notifier).deleteBucket(id);
              context.pop();
            },
            child: const Text(
              '削除',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          left: 16,
          right: 16,
        ),
        child: ListView(
          children: [
            if (bucket == null) const Text('データが見つかりませんでした'),
            if (bucket != null) ...[
              Text(
                '優先度：${bucket.priorityText}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '完了予定日： ${bucket.formattedScheduledAt}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'タイトル',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                bucket.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                '説明',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                bucket.description,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
