import 'package:just_movie_it/domain/entities/entities.dart';

class UserModel {
  final String id;
  final String email;
  final String token;

  const UserModel({
    required this.id,
    required this.email,
    required this.token,
  });

  UserEntity toEntity() => UserEntity(id: id, email: email, token: token);
}
