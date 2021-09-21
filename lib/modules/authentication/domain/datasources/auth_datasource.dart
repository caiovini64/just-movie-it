import 'package:just_movie_it/modules/authentication/domain/entities/entities.dart';
import 'package:just_movie_it/modules/authentication/domain/helpers/parameters/parameters.dart';

abstract class IAuthDatasource {
  Future<UserEntity> login(AuthParameters authParameters);
}
