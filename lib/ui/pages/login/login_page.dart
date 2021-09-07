import 'package:flutter/material.dart';
import 'package:just_movie_it/presentation/presenters/getx_login_presenter.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/mixins/mixins.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:provider/provider.dart';
import 'components/components.dart';

class LoginPage extends StatelessWidget with ResponsivenessManager {
  final LoginPresenter presenter;

  const LoginPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
