import 'package:flutter_dotenv/flutter_dotenv.dart';

// ignore: avoid_classes_with_only_static_members
class Config {
  static String _get(String name) => dotenv.env[name] ?? '';

  static String get firebaseApiKey => _get('firebaseApiKey');
}
