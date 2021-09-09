import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/parameters/parameters.dart';

abstract class AuthRepository {
  Future<UserEntity> login(AuthParameters authParameters);
}
