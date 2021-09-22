import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/login/login.dart';

Widget makeLoginPage() => LoginPage(BlocLoginPresenter());
