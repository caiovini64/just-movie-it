import 'package:just_movie_it/modules/authentication/domain/helpers/errors/domain_error.dart';

abstract class LoginPresenter {
  Stream<DomainError> get emailErrorStream;
  Stream<DomainError> get passwordErrorStream;
  Stream<String> get navigateToStream;
  Stream<bool> get isLoadingStream;

  void validateEmail(String email);
  void validatePassword(String password);
  Future<void> auth();
  void goToSignUp();
}
