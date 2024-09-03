import 'dart:convert';

import 'package:bucket_list/common/http_client_provider.dart';
import 'package:bucket_list/features/meigen/models/meigen_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meigen_provider.g.dart';

@riverpod
Future<Meigen?> fetchMeigen(FetchMeigenRef ref) async {
  try {
    final response = await ref
        .read(getHttpClientProvider)
        .get(Uri.parse('https://meigen.doodlenote.net/api/json.php?c=1'));
    if (response.statusCode != 200) {
      return null;
    } else {
      final json = jsonDecode(response.body);

      if (json.isEmpty) {
        return null;
      }

      // list形式で返ってくるので、最初の要素を取得
      return Meigen.fromJson(json[0] as Map<String, dynamic>);
    }
  } catch (err) {
    return null;
  }
}
