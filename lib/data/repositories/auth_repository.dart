import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:just_movie_it/data/helpers/exceptions/auth_exception.dart';
import 'package:just_movie_it/domain/datasources/auth_datasource.dart';
import 'package:just_movie_it/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/domain/entities/user_entity.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';

class AuthRepository implements IAuthRepository {
  final IAuthDatasource datasource;
  AuthRepository(this.datasource);

  @override
  Future<Either<DomainError, UserEntity>> login(
      AuthParameters authParameters) async {
    try {
      final result = await datasource.login(authParameters);
      return Right(result);
    } on AuthException catch (exception) {
      final DomainError error = AuthException.toError(exception.message);
      return Left(error);
    } on SocketException catch (_) {
      return const Left(DomainError.noInternet);
    }
  }
}
