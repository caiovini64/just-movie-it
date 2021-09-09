import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_movie_it/ui/pages/login/presentation/cubit_login_presenter.dart';
import 'package:mocktail/mocktail.dart';

class FormKeySpy extends Mock implements GlobalKey<FormState> {}

void main() {
  late GlobalKey<FormState> formKey;
  late String email;
  late String password;
  late CubitLoginPresenter presenter;
  setUp(() {
    formKey = FormKeySpy();
    email = faker.internet.email();
    password = faker.internet.password();
    presenter = CubitLoginPresenter();
  });

  test('should have initial state as [Initial]', () {
    expect(presenter.state, Initial());
  });

  group('login', () {
    blocTest(
      'should emit [Loading, Done] state when login success',
      build: () => presenter,
      act: (CubitLoginPresenter cubit) async => cubit.login(email, password),
      expect: () => [Loading(), Done()],
    );
  });

  group('validate email', () {
    test('should return null when the email is valid', () {
      final result = presenter.validateEmail(email);
      expect(result, null);
    });
    test('should return a String when the email is not valid', () {
      final result = presenter.validateEmail('email@isnotvalid');
      expect(result, isA<String>());
    });
  });

  group('validate password', () {
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
