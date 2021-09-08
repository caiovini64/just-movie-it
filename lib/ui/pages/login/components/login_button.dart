import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/pages/login/presentation/cubit_login_presenter.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = context.read<CubitLoginPresenter>();
    return BlocBuilder<CubitLoginPresenter, LoginState>(
      builder: (context, state) {
        return StandardButton(
          onPressed: presenter.login,
          child: state is Loading
              ? const CircularProgressIndicator(color: Colors.white)
              : const Text('Login'),
        );
      },
    );
  }
}
