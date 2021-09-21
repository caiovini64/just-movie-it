import 'package:just_movie_it/main/factories/datasources/auth_datasource_factory.dart';
import 'package:just_movie_it/modules/authentication/data/repositories/repositories.dart';
import 'package:just_movie_it/modules/authentication/domain/repositories/repositories.dart';

IAuthRepository makeAuthRepository() => AuthRepository(makeAuthDatasource());
