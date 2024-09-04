import 'package:bucket_list/features/bucket/controllers/bucket_controller.dart';
import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/widgets/bucket_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditBucketScreen extends HookConsumerWidget {
  const EditBucketScreen({
    super.key,
    required this.id,
  });

  final int id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bucket = ref.watch(bucketListControllerProvider.notifier).get(id);
    final titleController = useTextEditingController(text: bucket?.title);
    final descriptionController =
        useTextEditingController(text: bucket?.description);
    final date = useState(bucket?.scheduledAt ?? DateTime.now());
    final priority = useState(bucket?.priority ?? 1);

    void setDate(DateTime newDate) {
      date.value = newDate;
    }

    void setPriority(int newPriority) {
      priority.value = newPriority;
    }

    void save() {
      ref.read(bucketListControllerProvider.notifier).updateBucket(
            id,
            BucketDto(
              title: titleController.text,
              description: descriptionController.text,
              scheduledAt: date.value,
              priority: priority.value,
            ),
          );

      ref.invalidate(getBucketProvider);
      context.pop();
    }

    if (bucket == null) {
      return const Text('データが見つかりませんでした');
    }

    return BucketFormWidget(
      titleController: titleController,
      descriptionController: descriptionController,
      date: date,
      priority: priority,
      setDate: setDate,
      setPriority: setPriority,
      save: save,
      saveBottomText: '編集する',
      appBarTitle: 'Bucketを編集',
    );
  }
}
