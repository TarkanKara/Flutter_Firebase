import 'package:firebase_flutter/1_firebase_auth/core/model/my_app_user.dart';

abstract class IAuthService {
  //createUserWithEmailAndPassword
  Future<MyAppUser> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  //signInEmailAndPassword
  Future<MyAppUser> signInEmailAndPassword({
    required String email,
    required String password,
  });

  //signOut
  Future<void> signOut();

  //onAuthStateChanged
  Stream<MyAppUser?> get onAuthStateChanged;
}
