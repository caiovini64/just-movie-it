import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:just_movie_it/data/http/http_client.dart';
import 'package:just_movie_it/infra/http/http_adapter.dart';
import 'package:mocktail/mocktail.dart';

class ClientSpy extends Mock implements Client {}

class UriFake extends Fake implements Uri {}

void main() {
  late Client client;
  late HttpClient httpAdapter;
  late String url;
  late Response response;

  setUpAll(() {
    registerFallbackValue(UriFake());
  });

  setUp(() {
    client = ClientSpy();
    httpAdapter = HttpAdapter(client);
    url = faker.internet.httpUrl();
    response = Response('', 200);
  });

  group('HttpAdapter get', () {
    test('should return an HttpResponse when calls to the client succeed',
        () async {
      when(() => client.get(any())).thenAnswer((_) async => response);
      final result = await httpAdapter.get(url);
      expect(result, isA<HttpResponse>());
      verify(() => client.get(Uri.parse(url)));
    });
  });
}
