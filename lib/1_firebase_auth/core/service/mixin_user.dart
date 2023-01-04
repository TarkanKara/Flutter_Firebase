import 'package:firebase_auth/firebase_auth.dart';

import '../model/my_app_user.dart';

mixin ConvertUser {
  MyAppUser convertUser(UserCredential userCredential) {
    return MyAppUser(
      userId: userCredential.user!.uid,
      userMail: userCredential.user!.email!,
    );
  }
}
