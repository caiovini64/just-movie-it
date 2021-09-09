import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/pages/login/presentation/cubit_login_presenter.dart';

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
    final presenter = context.read<CubitLoginPresenter>();
    return BlocBuilder<CubitLoginPresenter, LoginState>(
      builder: (context, state) {
        return StandardButton(
          onPressed: () {
            final email = emailController.value.text;
            final password = passwordController.value.text;
            if (formKey.currentState!.validate()) {
              presenter.login(email, password);
            }
          },
          child: state is Loading
              ? const CircularProgressIndicator(color: Colors.white)
              : const Text('Login'),
        );
      },
    );
  }
}
