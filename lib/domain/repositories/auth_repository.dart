import 'package:dartz/dartz.dart';
import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/errors/auth_error.dart';
import 'package:just_movie_it/domain/helpers/parameters/parameters.dart';

abstract class IAuthRepository {
  Future<Either<AuthError, UserEntity>> login(AuthParameters authParameters);
}
