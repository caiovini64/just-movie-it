import 'package:dartz/dartz.dart';
import 'package:just_movie_it/data/helpers/exceptions/auth_exception.dart';
import 'package:just_movie_it/domain/datasources/auth_datasource.dart';
import 'package:just_movie_it/domain/helpers/errors/auth_error.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/domain/entities/user_entity.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDatasource datasource;
  AuthRepository(this.datasource);

  @override
  Future<Either<AuthError, UserEntity>> login(
      AuthParameters authParameters) async {
    final result = await datasource.login(authParameters);
    return Right(result);
  }
}
