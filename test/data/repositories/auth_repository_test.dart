import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_movie_it/data/models/user_model.dart';
import 'package:just_movie_it/data/repositories/auth_repository.dart';
import 'package:just_movie_it/domain/datasources/datasources.dart';
import 'package:just_movie_it/domain/helpers/parameters/auth_parameters.dart';
import 'package:just_movie_it/domain/repositories/repositories.dart';
import 'package:mocktail/mocktail.dart';

class AuthDatasourceSpy extends Mock implements IAuthDatasource {}

void main() {
  late IAuthDatasource datasource;
  late IAuthRepository repository;
  late String email;
  late String password;
  late AuthParameters authParameters;
  late String id;
  late String token;
  late UserModel userModel;

  setUp(() {
    datasource = AuthDatasourceSpy();
    repository = AuthRepository(datasource);
    email = faker.internet.email();
    password = faker.internet.password();
    authParameters = AuthParameters(email, password);
    id = faker.randomGenerator.numberOfLength(10);
    token = faker.randomGenerator.string(30);
    userModel = UserModel(email: email, id: id, token: token);
  });

  test('should returns an UserEntity when calls to datasource succeeds',
      () async {
    when(() => datasource.login(authParameters))
        .thenAnswer((_) async => userModel);
  });
}
