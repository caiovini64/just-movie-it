import 'package:flutter/material.dart';

abstract class LoginPresenter {
  Future<void> login(
      GlobalKey<FormState> formKey, String email, String password);
  void goToSignUp();
  String? validateEmail(String? email);
  String? validatePassword(String? password);
}
