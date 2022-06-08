import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<User> registerUser(String email, String password) async {
    final registerCred = await firebaseAuth.createUserWithEmailAndPassword(
    email: email,
    password: password,
    );
     return registerCred.user;
  }



  Future<User> LoginUser(String email, String password) async{
    final userCred = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password
    );
      return  userCred.user;
  }
}