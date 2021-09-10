import 'package:just_movie_it/data/repositories/auth_repository.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';
import 'package:just_movie_it/main/factories/datasources/auth_datasource_factory.dart';

IAuthRepository makeAuthRepository() => AuthRepository(makeAuthDatasource());
