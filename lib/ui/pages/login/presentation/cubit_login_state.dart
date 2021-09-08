part of 'cubit_login_presenter.dart';

@immutable
abstract class LoginState {}

class Initial extends LoginState {}

class Loading extends LoginState {}

class Error extends LoginState {
  final String message;
  Error(this.message);
}

class Done extends LoginState {}
