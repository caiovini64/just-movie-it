import 'dart:async';

import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/modules/authentication/domain/repositories/repositories.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/presentation/mixins/mixins.dart';

class BlocLoginPresenter
    with LoadingManager, NavigationManager
    implements BlocBase, LoginPresenter {
  final IAuthRepository repository;
  final _emailError = StreamController<DomainError?>();
  final _passwordError = StreamController<DomainError?>();

  BlocLoginPresenter(this.repository);

  late String email;
  late String password;

  @override
  Stream<DomainError?> get emailErrorStream => _emailError.stream;
  @override
  Stream<DomainError?> get passwordErrorStream => _passwordError.stream;

  @override
  void validateEmail(String? value) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value!.trim());
    if (!emailValid) {
      _emailError.sink.add(DomainError.invalidEmail);
    } else {
      email = value;
      _emailError.sink.add(null);
    }
  }

  @override
  void validatePassword(String? value) {
    if (value!.length <= 5) {
      _passwordError.sink.add(DomainError.invalidPasswordLength);
    } else {
      password = value;
      _passwordError.sink.add(null);
    }
  }

  @override
  Future<void> auth() async {
    setLoading();
    final result = await repository.login(AuthParameters(email, password));
    result.fold(
      (failure) => print('erro'),
      (done) => setNotLoading(),
    );
  }

  @override
  void goToSignUp() {
    setNavigation('/signup');
  }

  @override
  void dispose() {
    isLoading.close();
    navigateTo.close();
    _emailError.close();
    _passwordError.close();
  }
}
