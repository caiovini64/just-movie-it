import 'package:flutter/material.dart';
import 'package:just_movie_it/shared/ui/components/components.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginButton({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardButton(
      onPressed: () {
        final email = emailController.value.text;
        final password = passwordController.value.text;
      },
      child: const Text('Login'),
    );
  }
}
