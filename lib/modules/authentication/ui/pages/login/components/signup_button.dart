import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final presenter = BlocProvider.of<BlocLoginPresenter>(context);
    return TextButton(
      onPressed: () => presenter.goToSignUp(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('or ',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 16)),
          Text(
            'Sign up',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
