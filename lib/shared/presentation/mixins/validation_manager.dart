import 'package:just_movie_it/modules/authentication/domain/helpers/errors/errors.dart';

mixin ValidationManager {
  DomainError? validateEmail(String? value) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value!.trim());
    if (!emailValid) {
      return DomainError.invalidEmail;
    } else {
      return null;
    }
  }

  DomainError? validatePassword(String? value) {
    if (value!.length <= 5) {
      return DomainError.invalidPasswordLength;
    } else {
      return null;
    }
  }
}
