import 'package:dartz/dartz.dart';

import 'package:just_movie_it/modules/authentication/domain/entities/entities.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/errors/errors.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/parameters/parameters.dart';

abstract class IAuthRepository {
  Future<Either<DomainError, UserEntity>> login(AuthParameters authParameters);
}
