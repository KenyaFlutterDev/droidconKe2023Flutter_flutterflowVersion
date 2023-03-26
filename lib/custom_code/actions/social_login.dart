// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<String> socialLogin() async {
  // 5s over, navigate to a new page
  GoogleSignIn googleSignIn = GoogleSignIn();
  print(googleSignIn);
  final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
  print(googleUser);
  GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  print(googleAuth);
  // Then do the API call
  print(googleAuth?.accessToken);
  return googleAuth!.accessToken!;
}
