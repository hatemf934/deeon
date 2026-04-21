import 'package:firebase_auth/firebase_auth.dart';

class FireBaseServices {
  Future<User> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return credential.user!;
  }
}
