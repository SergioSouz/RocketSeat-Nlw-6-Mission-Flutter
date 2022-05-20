import 'package:counter_app/shared/auth/authController.dart';
import 'package:counter_app/shared/models/user_model.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController {
  final authController = AuthController();
  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        "email",
      ],
    );
    try {
      final res = await _googleSignIn.signIn();
      final user = UserModel(name: res!.displayName!, photoURL: res.photoUrl);
      authController.setUser(context, user);
      print(res);
    } catch (err) {
      authController.setUser(context, null);
      print(err);
    }
  }
}
