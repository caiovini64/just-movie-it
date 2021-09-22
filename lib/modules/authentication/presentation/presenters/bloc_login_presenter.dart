import 'dart:async';

import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';

class BlocLoginPresenter implements BlocBase, LoginPresenter {
  final _isLoading = StreamController<bool>();

  @override
  Stream<bool> get isLoadingStream => _isLoading.stream;

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
    _isLoading.sink.add(true);
    Future.delayed(const Duration(seconds: 2))
        .then((value) => _isLoading.sink.add(false));
  }

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  void dispose() {
    _isLoading.close();
  }
}
