import 'package:flutter/material.dart';
import 'package:just_movie_it/presentation/presenters/getx_login_presenter.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:provider/provider.dart';
import 'components/components.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final LoginPresenter presenter = GetxLoginPresenter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
            child: ListenableProvider<LoginPresenter>(
          create: (_) => presenter,
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Logo(),
              const SizedBox(height: 70),
              EmailInput(),
              const SizedBox(height: 35),
              PasswordInput(),
              const ForgotPasswordButton(),
              const SizedBox(height: 35),
              LoginButton(),
              const SignUpButton(),
            ],
          ),
        )),
      ),
    );
  }
}
