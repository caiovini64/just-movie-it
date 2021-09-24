import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';
import 'package:just_movie_it/modules/authentication/validations/protocols/field_validation.dart';

class PasswordValidation implements FieldValidation {
  @override
  DomainError? call(String? value) {
    if (value!.length <= 5) {
      return DomainError.invalidPasswordLength;
    } else {
      return null;
    }
  }
}
