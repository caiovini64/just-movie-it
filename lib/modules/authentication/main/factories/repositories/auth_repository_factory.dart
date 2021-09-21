import 'package:just_movie_it/modules/authentication/data/repositories/auth_repository.dart';
import 'package:just_movie_it/modules/authentication/domain/repositories/auth_repository.dart';
import 'package:just_movie_it/modules/authentication/main/factories/datasources/auth_datasource_factory.dart';

IAuthRepository makeAuthRepository() => AuthRepository(makeAuthDatasource());
