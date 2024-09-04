import 'package:bucket_list/features/bucket/widgets/bucket_list_widget.dart';
import 'package:bucket_list/features/meigen/widgets/meigen_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BucketListScreen extends ConsumerWidget {
  const BucketListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bucket List',
              style: TextStyle(
                height: 1,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '人生でやりたいことを管理するツール',
              style: TextStyle(
                fontSize: 12,
                height: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.push('/bucket/create');
            },
            child: const Text(
              '追加する',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4),
              MeigenWidget(),
              Expanded(child: BucketListWidget()),
            ],
          )),
    );
  }
}
