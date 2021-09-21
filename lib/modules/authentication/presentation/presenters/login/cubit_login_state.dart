part of 'cubit_login_presenter.dart';

@immutable
abstract class LoginState extends Equatable {}

class Initial extends LoginState {
  @override
  List<Object?> get props => [];
}

class Loading extends LoginState {
  @override
  List<Object?> get props => [];
}

class Error extends LoginState {
  final String message;
  Error(this.message);

  @override
  List<Object?> get props => [message];
}

class Done extends LoginState {
  @override
  List<Object?> get props => [];
}

class ObscureText extends LoginState {
  final bool isObscure;

  ObscureText(this.isObscure);
  @override
  List<Object?> get props => [isObscure];
}
