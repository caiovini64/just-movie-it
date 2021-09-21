import 'package:just_movie_it/modules/authentication/data/datasources/datasources.dart';
import 'package:just_movie_it/modules/authentication/domain/datasources/datasources.dart';
import 'package:just_movie_it/modules/authentication/main/factories/client/http_adapter_factory.dart';
import 'package:just_movie_it/shared/enviroment/endpoints.dart';

IAuthDatasource makeAuthDatasource() => AuthDatasource(
    url: FirebaseEndpoints.login('signUp'), client: makeHttpAdapter());
