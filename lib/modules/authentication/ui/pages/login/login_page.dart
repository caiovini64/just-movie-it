import 'package:flutter/material.dart';
import 'package:just_movie_it/modules/authentication/presentation/presenters/bloc_login_presenter.dart';

import 'package:just_movie_it/modules/authentication/ui/components/components.dart';
import 'package:just_movie_it/modules/authentication/ui/mixins/mixins.dart';
import 'package:just_movie_it/shared/presentation/bloc_provider.dart';
import 'package:just_movie_it/shared/ui/components/components.dart';
import 'package:just_movie_it/shared/ui/mixins/navigation_manager.dart';
import 'components/components.dart';

class LoginPage extends StatefulWidget {
  final BlocLoginPresenter presenter;
  const LoginPage(this.presenter);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>  with ResponsivenessManager, UiNavigationManager {

  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BlocLoginPresenter>(
      bloc: widget.presenter,
      child: Builder(
        builder: (context) {
          handleNavigation(context, widget.presenter.navigateToStream, clear: true);
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: largePadding(context)),
                      const Logo(),
                      const SizedBox(height: 70),
                      EmailInput(controller: emailController),
                      const SizedBox(height: 35),
                      PasswordInput(controller: passwordController),
                      const ForgotPasswordButton(),
                      const SizedBox(height: 35),
                      LoginButton(
                        formKey: _formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                      ),
                      const SignUpButton(),
                      const SizedBox(height: 35),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
