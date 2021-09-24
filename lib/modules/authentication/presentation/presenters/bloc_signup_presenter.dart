import 'dart:async';

import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/signup/signup_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/presentation/mixins/loading_manager.dart';
import 'package:just_movie_it/shared/presentation/mixins/mixins.dart';

class BlocSignupPresenter
    with LoadingManager
    implements SignupPresenter, BlocBase {
  final _emailError = StreamController<DomainError?>();
  final _passwordError = StreamController<DomainError?>();

  late String email;
  late String password;

  @override
  Stream<bool> get isLoadingStream => isLoading.stream;
  @override
  Stream<DomainError?> get emailErrorStream => _emailError.stream;
  @override
  Stream<DomainError?> get passwordErrorStream => _passwordError.stream;

  @override
  Future<void> auth() {
    // TODO: implement auth
    throw UnimplementedError();
  }

  @override
  void validateEmail(String value) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value.trim());
    if (!emailValid) {
      _emailError.sink.add(DomainError.invalidEmail);
    } else {
      email = value;
      _emailError.sink.add(null);
    }
  }

  @override
  void validatePassword(String value) {
    if (value.length <= 5) {
      _passwordError.sink.add(DomainError.invalidPasswordLength);
    } else {
      password = value;
      _passwordError.sink.add(null);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
