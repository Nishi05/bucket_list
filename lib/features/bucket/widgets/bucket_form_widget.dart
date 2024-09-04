import 'package:bucket_list/common/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BucketFormWidget extends HookConsumerWidget {
  const BucketFormWidget({
    super.key,
    required this.titleController,
    required this.descriptionController,
    required this.date,
    required this.priority,
    required this.setDate,
    required this.setPriority,
    required this.save,
    required this.saveBottomText,
    required this.appBarTitle,
  });

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final ValueNotifier<DateTime> date;
  final ValueNotifier<int> priority;
  final void Function(DateTime) setDate;
  final void Function(int) setPriority;
  final void Function() save;
  final String saveBottomText;
  final String appBarTitle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTitleEmpty = useState(false);

    Future<void> selectDate(BuildContext context) async {
      final picked = await showDatePicker(
        context: context,
        initialDate: date.value,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101),
      );
      if (picked != null && picked != date.value) {
        setDate(picked);
      }
    }

    DropdownMenuItem<int> buildDropdownMenuItem(int value) {
      return DropdownMenuItem(
        value: value,
        child: Row(
          children: List.generate(
            value,
            (index) => const Icon(Icons.star, color: Colors.amber),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            appBarTitle,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    Text('タイトル'),
                    SizedBox(width: 4),
                    Text(
                      '必須',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '例: 人生でやりたいこと',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
                maxLength: 30,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                controller: titleController,
              ),
              if (isTitleEmpty.value)
                const Text(
                  'タイトルは必須です',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text('説明'),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: '例: 具体的な内容や理由',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
                maxLines: 8,
                controller: descriptionController,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 4,
                  top: 16,
                ),
                child: Text('完了予定日'),
              ),
              GestureDetector(
                onTap: () {
                  selectDate(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${date.value.year}年${date.value.month}月${date.value.day}日 (残り${remainingDays(date.value)}日)',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 4,
                  top: 16,
                ),
                child: Text('優先度'),
              ),
              DropdownButtonFormField<int>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(15),
                ),
                items: List.generate(5, (index) => index + 1)
                    .map((e) => buildDropdownMenuItem(e))
                    .toList(),
                onChanged: (value) {
                  if (value == null) return;
                  priority.value = value;
                },
                value: priority.value,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (titleController.text.isEmpty) {
                    isTitleEmpty.value = true;
                    return;
                  } else {
                    isTitleEmpty.value = false;
                  }

                  save();
                },
                child: Text(
                  saveBottomText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
