import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/components/password_input.dart';
import 'package:just_movie_it/ui/pages/login/components/login_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}
