enum DomainError {
  somethingWrong,
  emailExists,
  tooManyAttempts,
  emailNotFound,
  invalidPassword,
  userDisabled,
}

extension DomainErrorExtension on DomainError {
  String get message {
    switch (this) {
      case DomainError.somethingWrong:
        return 'Something wrong!';
      case DomainError.emailExists:
        return 'The email exists';
      case DomainError.tooManyAttempts:
        return 'Too many attempts, try again later!';
      case DomainError.emailNotFound:
        return 'Email not found.';
      case DomainError.invalidPassword:
        return 'Invalid password.';
      case DomainError.userDisabled:
        return 'User disabled.';
    }
  }
}
