import 'package:flutter/material.dart';

import 'package:just_movie_it/modules/authentication/main/factories/presenters/bloc_login_presenter_factory.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login.dart';

Widget makeLoginPage() => LoginPage(makeBlocLoginPresenter());
