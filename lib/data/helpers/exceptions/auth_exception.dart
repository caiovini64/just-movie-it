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

  @override
  List<Object?> get props => [];
}
