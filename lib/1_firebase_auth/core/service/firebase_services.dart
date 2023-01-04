// ignore_for_file: unused_field, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_flutter/1_firebase_auth/core/model/my_app_user.dart';
import 'package:firebase_flutter/1_firebase_auth/core/service/i_auth_service.dart';
import 'package:firebase_flutter/1_firebase_auth/core/service/mixin_user.dart';

class AuthService with ConvertUser implements IAuthService {
  //
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  @override
  Future<MyAppUser> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    var tempUser = await _authInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return convertUser(tempUser);
  }

  @override
  // TODO: implement onAuthStateChanged
  Stream<MyAppUser?> get onAuthStateChanged => throw UnimplementedError();

  @override
  Future<MyAppUser> signInEmailAndPassword(
      {required String email, required String password}) {
    // TODO: implement signInEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
