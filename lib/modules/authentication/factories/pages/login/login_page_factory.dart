import 'package:flutter/cupertino.dart';

import 'package:just_movie_it/modules/authentication/factories/presenters/login_presenter_factory.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login.dart';

Widget makeLoginPage() => LoginPage(makeCubitLoginPresenter());
