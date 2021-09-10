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

  factory UserModel.fromJson(Map json) {
    return UserModel(
      email: json['email'] as String,
      id: json['localId'] as String,
      token: json['idToken'] as String,
    );
  }

  UserEntity toEntity() => UserEntity(id: id, email: email, token: token);
}
