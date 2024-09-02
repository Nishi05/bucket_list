import 'dart:convert';

import 'package:bucket_list/features/meigen/models/meigen_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'meigen_provider.g.dart';

@riverpod
Future<Meigen?> fetchMeigen(FetchMeigenRef ref) async {
  try {
    final dio = Dio();

    final response =
        await dio.get('https://meigen.doodlenote.net/api/json.php?c=1');
    final json = jsonDecode(response.data);
    // list形式で返ってくるので、最初の要素を取得
    return Meigen.fromJson(json[0] as Map<String, dynamic>);
  } catch (err) {
    return null;
  }
}
