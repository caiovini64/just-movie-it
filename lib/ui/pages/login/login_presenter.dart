import 'package:flutter/material.dart';

abstract class LoginPresenter {
  Future<void> login(
    GlobalKey<FormState> formKey,
    TextEditingController emailController,
    TextEditingController passwordController,
  );
  void goToSignUp();
  String? validateEmail(String? email);
  String? validatePassword(String? password);
}
