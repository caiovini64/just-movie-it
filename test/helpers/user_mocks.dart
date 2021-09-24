import 'package:just_movie_it/modules/authentication/data/models/user_model.dart';
import 'package:just_movie_it/modules/authentication/domain/entities/entities.dart';

const kUserEntity = UserEntity(
  email: 'email@email.com',
  id: '123',
  token: 'alskdlasdw',
);

const kUserModel = UserModel(
  email: 'email@email.com',
  id: '123',
  token: 'alskdlasdw',
);

const kUserJson = """
{
  "kind": "identitytoolkit#VerifyPasswordResponse",
  "localId": "123", 
  "email": "email@email.com", 
  "displayName": "", 
  "idToken": "alskdlasdw"
}
""";

const dataErrorJson = '''
{
    "error": {
    "code": 400,
    "message": "INVALID_EMAIL",
    "errors": [
        {
            "message": "INVALID_EMAIL",
            "domain": "global",
            "reason": "invalid"
        }
    ]
}
}
''';
