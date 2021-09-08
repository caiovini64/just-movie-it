import 'package:equatable/equatable.dart';

class LoginViewModel extends Equatable {
  final String email;
  final String password;

  const LoginViewModel(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
