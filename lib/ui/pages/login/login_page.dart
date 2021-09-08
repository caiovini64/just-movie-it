import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/mixins/mixins.dart';
import 'components/components.dart';
import 'presentation/cubit_login_presenter.dart';

class LoginPage extends StatelessWidget with ResponsivenessManager {
  final CubitLoginPresenter presenter;
  const LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CubitLoginPresenter>(
      create: (context) => presenter,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: largePadding(context)),
              const Logo(),
              const SizedBox(height: 70),
              EmailInput(),
              const SizedBox(height: 35),
              PasswordInput(),
              const ForgotPasswordButton(),
              const SizedBox(height: 35),
              LoginButton(),
              const SignUpButton(),
              const SizedBox(height: 35),
            ],
          )),
        ),
      ),
    );
  }
}
