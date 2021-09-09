import 'package:equatable/equatable.dart';

class AuthParameters extends Equatable {
  final String email;
  final String password;

  const AuthParameters(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
