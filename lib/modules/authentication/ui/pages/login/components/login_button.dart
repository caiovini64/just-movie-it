import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/ui/components/components.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = BlocProvider.of<BlocLoginPresenter>(context);
    return StreamBuilder<bool>(
        stream: presenter.isLoadingStream,
        builder: (context, snapshot) {
          return StandardButton(
            onPressed: presenter.auth,
            child: Visibility(
              visible: snapshot.data ?? false,
              replacement: const Text('Login'),
              child: const CircularProgressIndicator(),
            ),
          );
        });
  }
}
