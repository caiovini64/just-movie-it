import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/parameters/parameters.dart';

abstract class IAuthRepository {
  Future<UserEntity> login(AuthParameters authParameters);
}
