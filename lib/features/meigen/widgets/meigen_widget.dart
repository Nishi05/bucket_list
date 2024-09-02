import 'package:bucket_list/features/meigen/repositories/meigen_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeigenWidget extends StatelessWidget {
  const MeigenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ランダム名言',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        MeigenText(),
      ],
    );
  }
}

class MeigenText extends ConsumerWidget {
  const MeigenText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meigen = ref.watch(fetchMeigenProvider);
    return switch (meigen) {
      AsyncData(:final value) => value != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value.meigen,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value.auther,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          : const Text('名言が取得できませんでした'),
      AsyncError() => const SizedBox(),
      _ => const CircularProgressIndicator()
    };
  }
}
