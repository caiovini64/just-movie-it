import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/modules/authentication/domain/repositories/auth_repository.dart';
import 'package:meta/meta.dart';

import 'package:just_movie_it/modules/authentication/ui/pages/login/login_presenter.dart';
part 'cubit_login_state.dart';

class CubitLoginPresenter extends Cubit<LoginState> implements LoginPresenter {
  final IAuthRepository repository;
  CubitLoginPresenter({required this.repository}) : super(Initial());

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  Future<void> login(String email, String password) async {
    emit(Loading());
    final result = await repository.login(AuthParameters(email, password));
    print(result);
    emit(Done());
  }

  @override
  String? validateEmail(String? email) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(email!.trim());
    if (!emailValid) {
      return 'Invalid email!';
    } else {
      return null;
    }
  }

  @override
  String? validatePassword(String? password) {
    if (password!.length <= 5) {
      return 'The password must be over 6 characters!';
    } else {
      return null;
    }
  }
}
