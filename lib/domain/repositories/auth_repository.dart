import 'package:dartz/dartz.dart';
import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/domain/helpers/parameters/parameters.dart';

abstract class IAuthRepository {
  Future<Either<DomainError, UserEntity>> login(AuthParameters authParameters);
}
