class AuthenticationException implements Exception {
  final int code;
  final String message;

  AuthenticationException({
    required this.code,
    required this.message,
  });

  factory AuthenticationException.fromJson(Map<String, dynamic> json) {
    return AuthenticationException(
      code: json['error']['code'] as int,
      message: json['error']['message'] as String,
    );
  }

  @override
  List<Object?> get props => [];
}
