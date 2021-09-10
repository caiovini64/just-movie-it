import 'dart:convert';

import 'package:http/http.dart';
import 'package:just_movie_it/data/helpers/exceptions/auth_exception.dart';
import 'package:just_movie_it/data/helpers/exceptions/server_exception.dart';
import 'package:just_movie_it/data/http/http_client.dart';
import 'package:just_movie_it/data/models/user_model.dart';
import 'package:just_movie_it/domain/datasources/auth_datasource.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/domain/entities/user_entity.dart';

class AuthDatasource implements IAuthDatasource {
  final HttpClient client;
  final String url;

  AuthDatasource({required this.client, required this.url});

  @override
  Future<UserEntity> login(AuthParameters authParameters) async {
    final response = await client.post(
      url,
      body: {
        "email": authParameters.email,
        "password": authParameters.password,
        "returnSecureToken": true,
      },
    ).timeout(const Duration(seconds: 10));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final user = UserModel.fromJson(json).toEntity();
      return user;
    } else if (response.statusCode == 400) {
      final json = jsonDecode(response.data) as Map<String, dynamic>;
      final exception = AuthException.fromJson(json);
      throw exception;
    } else {
      throw ServerException();
    }
  }
}