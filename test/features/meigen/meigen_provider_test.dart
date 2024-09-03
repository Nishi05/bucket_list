import 'package:bucket_list/common/http_client_provider.dart';
import 'package:bucket_list/features/meigen/repositories/meigen_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class HttpClientMock extends Mock implements http.Client {}

void main() {
  // mockResponseを返すProviderContainerを取得
  ProviderContainer getContainer({String body = '[]', int statusCode = 200}) {
    final httpClient = HttpClientMock();

    final mockResponse = http.Response(
      body,
      statusCode,
    );

    when(() => httpClient
            .get(Uri.parse('https://meigen.doodlenote.net/api/json.php?c=1')))
        .thenAnswer((_) async => mockResponse);

    final container = ProviderContainer(
      overrides: [
        getHttpClientProvider.overrideWithValue(httpClient),
      ],
    );

    return container;
  }

  group('Meigen取得機能のテスト', () {
    test('Meigen Apiのレスポンスが正常の場合', () async {
      final container = getContainer(
        body: '[{"meigen": "Example Quote", "auther": "Author Name"}]',
        statusCode: 200,
      );

      final meigen = await container.read(fetchMeigenProvider.future);

      expect(meigen, isNotNull);
      expect(meigen?.meigen, 'Example Quote');
      expect(meigen?.auther, 'Author Name');
    });

    test('Meigen Apiのレスポンスがエラーの場合', () async {
      final container = getContainer(
        body: 'Not Found',
        statusCode: 404,
      );

      final meigen = await container.read(fetchMeigenProvider.future);

      expect(meigen, isNull);
    });

    test('Meigen Apiのレスポンスは正常だが、データが空の場合', () async {
      final container = getContainer(
        body: '[]',
        statusCode: 200,
      );

      final meigen = await container.read(fetchMeigenProvider.future);

      expect(meigen, isNull);
    });
  });
}
