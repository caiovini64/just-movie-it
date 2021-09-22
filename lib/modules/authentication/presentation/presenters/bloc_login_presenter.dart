import 'dart:async';

import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/presentation/mixins/mixins.dart';

class BlocLoginPresenter with LoadingManager, NavigationManager implements BlocBase, LoginPresenter {
  
  final _emailError = StreamController<DomainError?>();
  final _passwordError = StreamController<DomainError?>();

  @override
  Stream<DomainError?> get emailErrorStream => _emailError.stream;
  @override
  Stream<DomainError?> get passwordErrorStream => _passwordError.stream;

  @override
  void validateEmail(String? email) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(email!.trim());
    if (!emailValid){ 
      _emailError.sink.add(DomainError.invalidEmail);
      }else{
        _emailError.sink.add(null);
      }
  }

  @override
  void validatePassword(String? password) {
    if (password!.length <= 5) _passwordError.sink.add(DomainError.invalidPasswordLength);
      
    
  }

  @override
  Future<void> auth() async {
    setLoading();
    Future.delayed(const Duration(seconds: 2)).then((value) => setNotLoading());
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
