import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDxZ_1QpImc-FiQbP3i7N93pNr5jFQSYjk",
            authDomain: "droidconke-70d60.firebaseapp.com",
            projectId: "droidconke-70d60",
            storageBucket: "droidconke-70d60.appspot.com",
            messagingSenderId: "602867001820",
            appId: "1:602867001820:web:30946aa75cea03b0",
            measurementId: "G-P1ZSFNJBFM"));
  } else {
    await Firebase.initializeApp();
  }
}
