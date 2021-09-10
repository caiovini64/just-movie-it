import 'package:http/http.dart';
import 'package:just_movie_it/data/http/http_client.dart';
import 'package:just_movie_it/infra/http/http_adapter.dart';

HttpClient makeHttpAdapter() => HttpAdapter(Client());
