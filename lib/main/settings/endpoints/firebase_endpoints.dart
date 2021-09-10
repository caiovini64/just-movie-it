import 'package:just_movie_it/main/settings/enviroment.dart';

class FirebaseEndpoints {
  static String login({String categorie = 'signInWithPassword'}) =>
      '$firebaseAuthUrl$categorie?key=${Enviroment().firebaseApiKey}';
}

const firebaseAuthUrl = 'https://identitytoolkit.googleapis.com/v1/accounts:';
