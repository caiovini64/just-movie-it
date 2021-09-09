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

  setUp(() {
    formKey = FormKeySpy();
    email = faker.internet.email();
    password = faker.internet.password();
  });
  group('Login', () {
    blocTest<CubitLoginPresenter, LoginState>(
      'should emit a LoginState when the login method is called',
      build: () => CubitLoginPresenter(),
      act: (cubit) => cubit.login(formKey, email, password),
      expect: () => <LoginState>[],
    );
  });
}
