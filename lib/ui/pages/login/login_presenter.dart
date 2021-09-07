abstract class LoginPresenter {
  String get emailError;
  String get passwordError;

  Future<void> login();
  void goToSignUp();
  void validateEmail(String email);
  void validatePassword(String password);
}
