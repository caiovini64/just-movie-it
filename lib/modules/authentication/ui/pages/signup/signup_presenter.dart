import 'package:just_movie_it/modules/authentication/domain/helpers/errors/errors.dart';

abstract class SignupPresenter {
  Stream<DomainError?> get emailErrorStream;
  Stream<DomainError?> get passwordErrorStream;
  Stream<bool> get isLoadingStream;

  void validateEmail(String value);
  void validatePassword(String value);
  Future<void> auth();
}
