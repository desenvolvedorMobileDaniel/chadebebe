import 'package:firebase_auth/firebase_auth.dart';
class Authentication{
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    bool valid = false;
  
  Future<String?> sigin({required String email, required String password})async{
    try {
    UserCredential siginUser =  await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    valid = true;
    }on FirebaseAuthException catch (e) {
      valid = false;
      switch(e.code){
        case "user-not-found":
          return "e-mail não cadastrado.";
        case "wrong-password":
          return "Senha incorreta";
        case "There is no user record corresponding to this identifier":
          return "erro de senha ou login";
      }
      return e.code;
    }

    return null;
  }

  Future<String?>createUser({required String name, required String surname, required String email, required String password,
  })async{
    try{
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password,);
      await userCredential.user!.updateDisplayName(name);
    } on FirebaseAuthException catch (e){
        switch(e.code){
          case "email-already-in-use":
            return "Email já esta em uso.";
        }
        return e.code;
    }
    return null;
  }


}