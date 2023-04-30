// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom actions

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

final _googleSignIn = GoogleSignIn();

Future<String> socialLogin() async {
  if (kIsWeb) {
    // Once signed in, return the UserCredentialß
    var ac = await FirebaseAuth.instance
        .signInWithPopup(GoogleAuthProvider())
        .then((value) => value.credential?.accessToken);
    return ac ?? '';
  }

  await signOutWithGoogle().catchError((_) => null);

  final auth = await (await _googleSignIn.signIn())?.authentication;

  if (auth == null) {
    return '';
  }
  return auth.accessToken ?? '';
}

Future signOutWithGoogle() => _googleSignIn.signOut();
