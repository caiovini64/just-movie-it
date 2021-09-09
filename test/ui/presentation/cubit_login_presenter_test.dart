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

  blocTest(
    'should emit [Loading, Done] state when login was success',
    build: () => presenter,
    act: (CubitLoginPresenter cubit) async => cubit.login(email, password),
    expect: () => [Loading(), Done()],
  );
}
