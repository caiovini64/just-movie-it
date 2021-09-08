import 'package:bloc/bloc.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:meta/meta.dart';

part 'cubit_login_state.dart';

class CubitLoginPresenter extends Cubit<LoginState> implements LoginPresenter {
  CubitLoginPresenter() : super(Initial());

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }

  @override
  Future<void> login() async {
    emit(Loading());
    await Future.delayed(Duration(seconds: 2));
    emit(Done());
  }

  @override
  void validateEmail(String email) {
    // TODO: implement validateEmail
  }

  @override
  void validatePassword(String password) {
    // TODO: implement validatePassword
  }
}
