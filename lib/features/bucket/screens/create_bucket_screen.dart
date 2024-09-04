import 'package:bucket_list/features/bucket/controllers/bucket_list_controller.dart';
import 'package:bucket_list/features/bucket/dtos/bucket_dto.dart';
import 'package:bucket_list/features/bucket/widgets/bucket_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateBucketScreen extends HookConsumerWidget {
  const CreateBucketScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final date = useState(DateTime(now.year, now.month, now.day));
    final titleController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priority = useState(1);

    void setDate(DateTime newDate) {
      date.value = newDate;
    }

    void setPriority(int newPriority) {
      priority.value = newPriority;
    }

    void save() {
      ref.read(bucketListControllerProvider.notifier).createBucket(
            BucketDto(
              title: titleController.text,
              description: descriptionController.text,
              scheduledAt: date.value,
              priority: priority.value,
            ),
          );
      context.pop();
    }

    return BucketFormWidget(
      titleController: titleController,
      descriptionController: descriptionController,
      date: date,
      priority: priority,
      setDate: setDate,
      setPriority: setPriority,
      save: save,
      saveBottomText: '追加する',
      appBarTitle: 'Bucketを追加',
    );
  }
}
