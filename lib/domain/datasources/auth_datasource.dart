import 'package:just_movie_it/data/models/user_model.dart';
import 'package:just_movie_it/domain/entities/entities.dart';
import 'package:just_movie_it/domain/helpers/parameters/parameters.dart';

abstract class IAuthDatasource {
  Future<UserModel> login(AuthParameters authParameters);
}
