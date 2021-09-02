import 'package:get/get_state_manager/src/simple/list_notifier.dart';

abstract class LoginPresenter with ListenableMixin {
  Stream<String> get navigateToStream;
  Stream<String> get emailErrorStream;
  Stream<String> get passwordErrorStream;
  Stream<bool> get isLoadingStream;

  Future<void> login();
  void goToSignUp();
  void validateEmail(String email);
  void validatePassword(String password);
}
