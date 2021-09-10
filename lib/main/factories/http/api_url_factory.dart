import 'package:just_movie_it/main/settings/enviroment.dart';

const firebaseAuthUrl = 'https://identitytoolkit.googleapis.com/v1/accounts:';

String makeLoginApiUrl(String categorie) =>
    '$firebaseAuthUrl$categorie?key=${Enviroment().firebaseApiKey}';
