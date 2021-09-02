import 'package:flutter/material.dart';
import 'package:just_movie_it/ui/components/components.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final presenter = Provider.of<LoginPresenter>(context);
    return StreamBuilder<bool>(
      stream: presenter.isLoadingStream,
      builder: (context, snapshot) {
        return StandardButton(
          onPressed: presenter.login,
          child: snapshot.data == false || snapshot.data == null
              ? const Text('Login')
              : const CircularProgressIndicator(
                  color: textColor,
                ),
        );
      },
    );
  }
}
