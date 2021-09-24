import 'package:just_movie_it/modules/authentication/domain/helpers/errors/errors.dart';

abstract class FieldValidation {
  DomainError? call(String? value);
}
