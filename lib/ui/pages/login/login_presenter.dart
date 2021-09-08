abstract class LoginPresenter {
  Future<void> login();
  void goToSignUp();
  void validateEmail(String email);
  void validatePassword(String password);
}
