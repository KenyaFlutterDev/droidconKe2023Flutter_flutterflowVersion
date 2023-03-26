import 'dart:async';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_util.dart';

import 'firebase_user_provider.dart';

export 'anonymous_auth.dart';
export 'apple_auth.dart';
export 'email_auth.dart';
export 'google_auth.dart';
export 'jwt_token_auth.dart';

/// Tries to sign in or create an account using Firebase Auth.
/// Returns the User object if sign in was successful.
Future<User?> signInOrCreateAccount(
  BuildContext context,
  Future<UserCredential?> Function() signInFunc,
  String authProvider,
) async {
  try {
    final userCredential = await signInFunc();
    return userCredential?.user;
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message!}')),
    );
    return null;
  }
}

Future signOut() {
  return FirebaseAuth.instance.signOut();
}

Future deleteUser(BuildContext context) async {
  try {
    if (currentUser?.user == null) {
      print('Error: delete user attempted with no logged in user!');
      return;
    }
    await currentUser?.user?.delete();
  } on FirebaseAuthException catch (e) {
    if (e.code == 'requires-recent-login') {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                'Too long since most recent sign in. Sign in again before deleting your account.')),
      );
    }
  }
}

Future resetPassword(
    {required String email, required BuildContext context}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message!}')),
    );
    return null;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Password reset email sent')),
  );
}

Future sendEmailVerification() async =>
    currentUser?.user?.sendEmailVerification();

String get currentUserEmail => currentUser?.user?.email ?? '';

String get currentUserUid => currentUser?.user?.uid ?? '';

String get currentUserDisplayName => currentUser?.user?.displayName ?? '';

String get currentUserPhoto => currentUser?.user?.photoURL ?? '';

String get currentPhoneNumber => currentUser?.user?.phoneNumber ?? '';

String get currentJwtToken => _currentJwtToken ?? '';

bool get currentUserEmailVerified => currentUser?.user?.emailVerified ?? false;

/// Create a Stream that listens to the current user's JWT Token, since Firebase
/// generates a new token every hour.
String? _currentJwtToken;
final jwtTokenStream = FirebaseAuth.instance
    .idTokenChanges()
    .map((user) async => _currentJwtToken = await user?.getIdToken())
    .asBroadcastStream();

// Set when using phone verification (after phone number is provided).
String? _phoneAuthVerificationCode;
// Set when using phone sign in in web mode (ignored otherwise).
ConfirmationResult? _webPhoneAuthConfirmationResult;

Future beginPhoneAuth({
  required BuildContext context,
  required String phoneNumber,
  required VoidCallback onCodeSent,
}) async {
  if (kIsWeb) {
    _webPhoneAuthConfirmationResult =
        await FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber);
    onCodeSent();
    return;
  }
  final completer = Completer<bool>();
  // If you'd like auto-verification, without the user having to enter the SMS
  // code manually. Follow these instructions:
  // * For Android: https://firebase.google.com/docs/auth/android/phone-auth?authuser=0#enable-app-verification (SafetyNet set up)
  // * For iOS: https://firebase.google.com/docs/auth/ios/phone-auth?authuser=0#start-receiving-silent-notifications
  // * Finally modify verificationCompleted below as instructed.
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: Duration(seconds: 5),
    verificationCompleted: (phoneAuthCredential) async {
      await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
      // If you've implemented auto-verification, navigate to home page or
      // onboarding page here manually. Uncomment the lines below and replace
      // DestinationPage() with the desired widget.
      // await Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (_) => DestinationPage()),
      // );
    },
    verificationFailed: (e) {
      completer.complete(false);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error: ${e.message!}'),
      ));
    },
    codeSent: (verificationId, _) {
      _phoneAuthVerificationCode = verificationId;
      completer.complete(true);
      onCodeSent();
    },
    codeAutoRetrievalTimeout: (_) {},
  );

  return completer.future;
}

Future verifySmsCode({
  required BuildContext context,
  required String smsCode,
}) async {
  if (kIsWeb) {
    return signInOrCreateAccount(
      context,
      () => _webPhoneAuthConfirmationResult!.confirm(smsCode),
      'PHONE',
    );
  } else {
    final authCredential = PhoneAuthProvider.credential(
        verificationId: _phoneAuthVerificationCode!, smsCode: smsCode);
    return signInOrCreateAccount(
      context,
      () => FirebaseAuth.instance.signInWithCredential(authCredential),
      'PHONE',
    );
  }
}
