import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_movie_it/data/helpers/exceptions/auth_exception.dart';
import 'package:just_movie_it/data/helpers/exceptions/server_exception.dart';
import 'package:just_movie_it/data/models/user_model.dart';
import 'package:just_movie_it/data/repositories/auth_repository.dart';
import 'package:just_movie_it/domain/datasources/datasources.dart';
import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';
import 'package:mocktail/mocktail.dart';

class AuthDatasourceSpy extends Mock implements IAuthDatasource {}

class AuthParametersFake extends Fake implements AuthParameters {}

void main() {
  late IAuthDatasource datasource;
  late IAuthRepository repository;
  late String email;
  late String password;
  late AuthParameters authParameters;
  late String id;
  late String token;
  late UserEntity userEntity;

  setUpAll(() {
    registerFallbackValue(AuthParametersFake());
  });

  setUp(() {
    datasource = AuthDatasourceSpy();
    repository = AuthRepository(datasource);
    email = faker.internet.email();
    password = faker.internet.password();
    authParameters = AuthParameters(email, password);
    id = faker.randomGenerator.numberOfLength(10);
    token = faker.randomGenerator.string(30);
    userEntity = UserEntity(email: email, id: id, token: token);
  });

  group('login', () {
    test('should return an UserEntity when calls to the datasource succeed',
        () async {
      when(() => datasource.login(any())).thenAnswer((_) async => userEntity);
      final result = await repository.login(authParameters);
      expect(result, Right(userEntity));
    });
    test(
        'should return an [AuthError] when calls to the datasource throw an AuthException',
        () async {
      when(() => datasource.login(any())).thenThrow(const AuthException(
          code: 404, message: 'TOO_MANY_ATTEMPTS_TRY_LATER'));
      final result = await repository.login(authParameters);
      expect(result, const Left(DomainError.tooManyAttempts));
    });
    test(
        'should return an [DomainError.noInternet] when calls to the datasource throw a SocketException',
        () async {
      when(() => datasource.login(any())).thenThrow(const SocketException(''));
      final result = await repository.login(authParameters);
      expect(result, const Left(DomainError.noInternet));
    });
    test(
        'should return an [DomainError.serverError] when calls to the datasource throw a ServerException',
        () async {
      when(() => datasource.login(any())).thenThrow(ServerException());
      final result = await repository.login(authParameters);
      expect(result, const Left(DomainError.serverError));
    });
  });
}
