import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:just_movie_it/modules/authentication/domain/repositories/auth_repository.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/login/cubit_login_presenter.dart';

class FormKeySpy extends Mock implements GlobalKey<FormState> {}

class AuthRepositorySpy extends Mock implements IAuthRepository {}

void main() {
  late String email;
  late String password;
  late CubitLoginPresenter presenter;
  late IAuthRepository repository;
  setUp(() {
    email = faker.internet.email();
    password = faker.internet.password();
    repository = AuthRepositorySpy();
    presenter = CubitLoginPresenter(repository: repository);
  });

  test('CubitLoginPresenter should have initial state as [Initial]', () {
    expect(presenter.state, Initial());
  });

  group('CubitLoginPresenter login', () {
    blocTest(
      'should emit [Loading, Done] state when login success',
      build: () => presenter,
      act: (CubitLoginPresenter cubit) async => cubit.login(email, password),
      expect: () => [Loading(), Done()],
    );
  });

  group('CubitLoginPresenter validateEmail', () {
    test('should return null when the email is valid', () {
      final result = presenter.validateEmail(email);
      expect(result, null);
    });
    test('should return a String when the email is not valid', () {
      final result = presenter.validateEmail('email@isnotvalid');
      expect(result, isA<String>());
    });
  });

  group('CubitLoginPresenter validatePassword', () {
    test(
      'should return null when the password is longer than 5 characters',
      () {
        final result = presenter.validatePassword('123456');
        expect(result, null);
      },
    );
    test(
      'should return String when the password is less than 6 characters',
      () {
        final result = presenter.validatePassword('12345');
        expect(result, isA<String>());
      },
    );
  });
}
