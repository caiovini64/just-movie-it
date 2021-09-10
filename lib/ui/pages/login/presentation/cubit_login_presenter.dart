import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:meta/meta.dart';

part 'cubit_login_state.dart';

class CubitLoginPresenter extends Cubit<LoginState> implements LoginPresenter {
  final IAuthRepository repository;
  CubitLoginPresenter(this.repository) : super(Initial());

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  Future<void> login(String email, String password) async {
    emit(Loading());
    await Future.delayed(const Duration(seconds: 3));
    final _email = email;
    final _password = password;
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
