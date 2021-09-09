import 'package:just_movie_it/domain/helpers/errors/errors.dart';

class AuthException implements Exception {
  final int code;
  final String message;

  AuthException({
    required this.code,
    required this.message,
  });

  factory AuthException.fromJson(Map<String, dynamic> json) {
    return AuthException(
      code: json['error']['code'] as int,
      message: json['error']['message'] as String,
    );
  }

  static AuthError toError(String message) {
    switch (message) {
      case 'EMAIL_NOT_FOUND':
        return AuthError.emailNotFound;
      case 'INVALID_PASSWORD':
        return AuthError.invalidPassword;
      case 'USER_DISABLED':
        return AuthError.userDisabled;
      case 'EMAIL_EXISTS':
        return AuthError.emailExists;
      case 'TOO_MANY_ATTEMPTS_TRY_LATER':
        return AuthError.tooManyAttempts;
      default:
        return AuthError.somethingWrong;
    }
  }

  @override
  List<Object?> get props => [];
}
