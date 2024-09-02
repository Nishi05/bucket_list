import 'package:freezed_annotation/freezed_annotation.dart';

part 'meigen_model.freezed.dart';
part 'meigen_model.g.dart';

@freezed
class Meigen with _$Meigen {
  const factory Meigen({
    required String meigen,
    required String auther, // api作成者がスペルミスをしている
  }) = _Meigen;

  factory Meigen.fromJson(Map<String, dynamic> json) => _$MeigenFromJson(json);
}
