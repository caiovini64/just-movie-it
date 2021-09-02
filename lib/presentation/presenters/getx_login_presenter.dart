import 'package:get/get.dart';
import 'package:just_movie_it/ui/pages/login/login_presenter.dart';

class GetxLoginPresenter extends GetxController implements LoginPresenter {
  final RxString _emailError = ''.obs;
  final RxString _passwordError = ''.obs;
  final RxBool _isLoading = false.obs;

  @override
  Stream<String> get emailErrorStream => _emailError.stream;
  @override
  Stream<String> get passwordErrorStream => _passwordError.stream;
  @override
  Stream<bool> get isLoadingStream => _isLoading.stream;

  @override
  Stream<String> get navigateToStream => throw UnimplementedError();

  @override
  Future<void> login() async {
    await Future.delayed(Duration.zero)
        .then((value) => _isLoading.value = true);
    await Future.delayed(const Duration(seconds: 2))
        .then((value) => _isLoading.toggle());
  }

  @override
  void validateEmail(String email) {
    // TODO: implement validateEmail
  }

  @override
  void validatePassword(String password) {
    // TODO: implement validatePassword
  }

  @override
  void goToSignUp() {
    // TODO: implement goToSignUp
  }
}
