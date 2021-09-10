import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_movie_it/data/datasources/datasources.dart';
import 'package:just_movie_it/data/helpers/exceptions/auth_exception.dart';
import 'package:just_movie_it/data/http/http_client.dart';
import 'package:just_movie_it/domain/datasources/auth_datasource.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/user_mocks.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() {
  late IAuthDatasource datasource;
  late HttpClient client;
  late String url;
  late String email;
  late String password;
  late AuthParameters parameters;

  setUp(() {
    client = HttpClientSpy();
    url = faker.internet.httpUrl();
    datasource = AuthDatasource(client: client, url: url);
    email = faker.internet.email();
    password = faker.internet.password();
    parameters = AuthParameters(email, password);
  });

  group('AuthDatasource login', () {
    test('should return an [UserEntity] when succeed', () async {
      when(() => client.post(any(), body: any(named: 'body'))).thenAnswer(
          (_) async => HttpResponse(data: kUserJson, statusCode: 200));
      final result = await datasource.login(parameters);
      expect(result, kUserEntity);
    });
    test('should return an [AuthException] when statusCode was 400', () async {
      when(() => client.post(any(), body: any(named: 'body'))).thenAnswer(
          (_) async => HttpResponse(data: dataErrorJson, statusCode: 400));
      expect(datasource.login(parameters), throwsA(isA<AuthException>()));
    });
    test('should return an [TimeoutException] when breaks the timeout',
        () async {
      when(() => client.post(any(), body: any(named: 'body'))).thenAnswer(
          (_) async => Future.delayed(const Duration(seconds: 12))
              .then((value) => HttpResponse(data: kUserJson, statusCode: 400)));
      expect(datasource.login(parameters), throwsA(isA<TimeoutException>()));
    });
  });
}
