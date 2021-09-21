import 'dart:async';
import 'dart:io';
import 'package:dartz/dartz.dart';

import 'package:just_movie_it/modules/authentication/data/helpers/exceptions/exceptions.dart';
import 'package:just_movie_it/modules/authentication/data/helpers/exceptions/server_exception.dart';
import 'package:just_movie_it/modules/authentication/domain/datasources/datasources.dart';
import 'package:just_movie_it/modules/authentication/domain/entities/entities.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/errors/errors.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/parameters/parameters.dart';
import 'package:just_movie_it/modules/authentication/domain/repositories/repositories.dart';

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
      final DomainError error =
          AuthException(code: exception.code, message: exception.message)
              .toDomainError();
      return Left(error);
    } on SocketException {
      return const Left(DomainError.noInternet);
    } on ServerException {
      return const Left(DomainError.serverError);
    } on TimeoutException {
      return const Left(DomainError.noInternet);
    }
  }
}
