import 'package:just_movie_it/main/factories/http/api_url_factory.dart';
import 'package:just_movie_it/main/factories/http/http_client_factory.dart';
import 'package:just_movie_it/modules/authentication/data/datasources/datasources.dart';
import 'package:just_movie_it/modules/authentication/domain/datasources/datasources.dart';

IAuthDatasource makeAuthDatasource() => AuthDatasource(
      client: makeHttpAdapter(),
      url: makeLoginApiUrl('signInWithPassword'),
    );
