import 'package:equatable/equatable.dart';
import 'package:just_movie_it/domain/entities/entities.dart';

abstract class AuthRepository {
  Future<UserEntity> login(AuthParameters authParameters);
}

class AuthParameters extends Equatable {
  final String email;
  final String password;

  const AuthParameters(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}
