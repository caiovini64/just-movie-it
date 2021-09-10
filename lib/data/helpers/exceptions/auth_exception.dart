import 'package:equatable/equatable.dart';
import 'package:just_movie_it/domain/helpers/errors/errors.dart';

class AuthException extends Equatable implements Exception {
  final int code;
  final String message;

  const AuthException({
    required this.code,
    required this.message,
  });

  factory AuthException.fromJson(Map<String, dynamic> json) {
    return AuthException(
      code: json['error']['code'] as int,
      message: json['error']['message'] as String,
    );
  }

  static DomainError toError(String message) {
    switch (message) {
      case 'EMAIL_NOT_FOUND':
        return DomainError.emailNotFound;
      case 'INVALID_PASSWORD':
        return DomainError.invalidPassword;
      case 'USER_DISABLED':
        return DomainError.userDisabled;
      case 'EMAIL_EXISTS':
        return DomainError.emailExists;
      case 'TOO_MANY_ATTEMPTS_TRY_LATER':
        return DomainError.tooManyAttempts;
      default:
        return DomainError.somethingWrong;
    }
  }

  @override
  List<Object?> get props => [code, message];
}
