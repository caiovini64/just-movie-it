import 'dart:async';

import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/presentation/mixins/mixins.dart';

class BlocLoginPresenter
    with LoadingManager
    implements BlocBase, LoginPresenter {
  @override
  Stream<String> get navigateToStream => throw UnimplementedError();

  @override
  Stream<DomainError> get passwordErrorStream => throw UnimplementedError();

  @override
  Stream<DomainError> get emailErrorStream => throw UnimplementedError();

  @override
  void validateEmail(String email) {
    // TODO: implement validateEmail
  }

  @override
  void validatePassword(String password) {
    // TODO: implement validatePassword
  }

  @override
  Future<void> auth() async {
    setLoading();
    Future.delayed(const Duration(seconds: 2)).then((value) => setNotLoading());
  }

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  void dispose() {
    isLoading.close();
  }
}
