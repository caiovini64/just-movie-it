import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_signup_presenter.dart';
import 'package:just_movie_it/modules/authentication/ui/mixins/mixins.dart';
import 'package:just_movie_it/modules/authentication/ui/pages/signup/components/components.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';

class SignupPage extends StatelessWidget with ResponsivenessManager {
  final BlocSignupPresenter presenter;
  const SignupPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocSignupPresenter>(
      bloc: presenter,
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: largePadding(context)),
                    const SizedBox(height: 70),
                    EmailInput(),
                    const SizedBox(height: 35),
                    PasswordInput(),
                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
