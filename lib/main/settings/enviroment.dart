import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  String _get(String name) => dotenv.env[name] ?? '';
  String get firebaseApiKey => _get('firebaseApiKey');
}
