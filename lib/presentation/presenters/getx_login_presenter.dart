// import 'package:get/get.dart';
// import 'package:just_movie_it/ui/pages/login/login_presenter.dart';

// class GetxLoginPresenter extends GetxController implements LoginPresenter {
//   late String _email;
//   late String _password;

//   final RxString _emailError = ''.obs;
//   final RxString _passwordError = ''.obs;
//   final RxBool _isLoading = false.obs;

//   @override
//   Stream<String> get emailErrorStream => _emailError.stream;
//   @override
//   Stream<String> get passwordErrorStream => _passwordError.stream;
//   @override
//   Stream<bool> get isLoadingStream => _isLoading.stream;

//   @override
//   Stream<String> get navigateToStream => throw UnimplementedError();

//   @override
//   Future<void> login() async {
//     await Future.delayed(Duration.zero)
//         .then((value) => _isLoading.value = true);
//     await Future.delayed(const Duration(seconds: 2))
//         .then((value) => _isLoading.toggle());
//   }

//   @override
//   void validateEmail(String email) {
//     _email = email;
//     final bool emailValid =
//         RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
//             .hasMatch(_email.trim());
//     if (!emailValid) {
//       _emailError.value = 'Invalid email!';
//     } else {
//       _emailError.value = '';
//     }
//   }

//   @override
//   void validatePassword(String password) {
//     _password = password;
//     if (_password.length <= 5) {
//       _passwordError.value = 'The password must be over 6 characters!';
//     } else {
//       _passwordError.value = '';
//     }
//   }

//   @override
//   void goToSignUp() {
//     // TODO: implement goToSignUp
//   }
// }
