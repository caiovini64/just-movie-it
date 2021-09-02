abstract class LoginPresenter {
  Stream<String> get navigateToStream;
  Stream<String> get emailErrorStream;
  Stream<String> get passwordErrorStream;
  Stream<bool> get isLoadingStream;

  Future<void> login();
  void goToSignUp();
  void validateEmail(String email);
  void validatePassword(String password);
}
