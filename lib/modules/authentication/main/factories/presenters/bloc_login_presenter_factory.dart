import 'package:just_movie_it/modules/authentication/main/factories/repositories/auth_repository_factory.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';

BlocLoginPresenter makeBlocLoginPresenter() =>
    BlocLoginPresenter(makeAuthRepository());
