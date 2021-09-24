import 'package:flutter/cupertino.dart';
import 'package:just_movie_it/modules/authentication/main/factories/presenters/bloc_signup_presenter_factory.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/signup/signup_page.dart';

Widget makeSignupPage() => SignupPage(makeBlocSignupPresenter());
