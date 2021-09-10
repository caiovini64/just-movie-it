import 'package:just_movie_it/main/factories/repositories/auth_repository_factory.dart';
import 'package:just_movie_it/ui/pages/login/presentation/cubit_login_presenter.dart';

CubitLoginPresenter makeCubitLoginPresenter() =>
    CubitLoginPresenter(makeAuthRepository());
