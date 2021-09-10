import 'package:just_movie_it/data/datasources/auth_datasource.dart';
import 'package:just_movie_it/domain/datasources/auth_datasource.dart';
import 'package:just_movie_it/main/factories/http/api_url_factory.dart';
import 'package:just_movie_it/main/factories/http/http_client_factory.dart';

IAuthDatasource makeAuthDatasource() => AuthDatasource(
      client: makeHttpAdapter(),
      url: makeLoginApiUrl('signInWithPassword'),
    );
