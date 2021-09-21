import 'package:flutter/cupertino.dart';
import 'package:just_movie_it/main/factories/presenters/login_presenter_factory.dart';
import 'package:just_movie_it/ui/pages/login/login.dart';

Widget makeLoginPage() => LoginPage(makeCubitLoginPresenter());
