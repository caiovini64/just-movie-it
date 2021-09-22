import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
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
    final presenter = BlocProvider.of<BlocLoginPresenter>(context);
    return StreamBuilder<bool>(
        stream: presenter.isLoadingStream,
        builder: (context, snapshot) {
          return StandardButton(
            onPressed: () {
              final email = emailController.value.text;
              final password = passwordController.value.text;
              presenter.auth();
            },
            child: Visibility(
              visible: snapshot.data ?? false,
              replacement: const Text('Login'),
              child: const CircularProgressIndicator(),
            ),
          );
        });
  }
}
