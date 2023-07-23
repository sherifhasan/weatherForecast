import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_forecast/application/utils/app_constants.dart';

import '../models/forecast_dto.dart';

class HttpAdapter {
  final Client client;

  HttpAdapter({required this.client});

  Future<void> request({
    required Uri url,
  }) async {
    await client.get(url);
  }
}

class FakeClient extends Mock implements Client {}

void main() {
  const query = 'Berlin, Germany';
  final uri = Uri.parse(ApiConstants.forecastApiApiUrl(query));
  late FakeClient fakeClient;
  setUp(
    () {
      fakeClient = FakeClient();
    },
  );
  test(
    'test forecast api call',
    () async {
      final sut = HttpAdapter(client: fakeClient);
      when(() => fakeClient.get(uri))
          .thenAnswer((_) async => Response(jsonString, 200));
      await sut.request(url: uri);
      verify(() => fakeClient.get(uri)).called(1);
    },
  );
}
