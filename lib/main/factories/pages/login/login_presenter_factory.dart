import 'package:just_movie_it/main/factories/repositories/auth_repository_factory.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/login/cubit_login_presenter.dart';

CubitLoginPresenter makeCubitLoginPresenter() =>
    CubitLoginPresenter(repository: makeAuthRepository());
