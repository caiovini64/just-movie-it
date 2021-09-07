import 'package:bloc/bloc.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:meta/meta.dart';

part 'cubit_login_state.dart';

class CubitLoginPresenter extends Cubit<LoginState> implements LoginPresenter {
  CubitLoginPresenter() : super(LoginInitial());

  @override
  // TODO: implement emailError
  String get emailError => throw UnimplementedError();

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  Future<void> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  // TODO: implement passwordError
  String get passwordError => throw UnimplementedError();

  @override
  void validateEmail(String email) {
    // TODO: implement validateEmail
  }

  @override
  void validatePassword(String password) {
    // TODO: implement validatePassword
  }
}
