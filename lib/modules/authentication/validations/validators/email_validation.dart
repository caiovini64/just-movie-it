import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/validations/protocols/field_validation.dart';

class EmailValidation implements FieldValidation {
  @override
  DomainError? call(String? value) {
    final bool emailValid =
        RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value!.trim());
    if (!emailValid) {
      return DomainError.invalidEmail;
    } else {
      return null;
    }
  }
}
