import 'package:flutter_frontend/login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class loginController extends GetxController {
  var _googleSingIn = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login() async{
    googleAccount.value = await _googleSingIn.signIn();
  }
}
 