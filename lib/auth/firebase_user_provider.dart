import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DroidconKe2023FlutterFlowFirebaseUser {
  DroidconKe2023FlutterFlowFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DroidconKe2023FlutterFlowFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DroidconKe2023FlutterFlowFirebaseUser>
    droidconKe2023FlutterFlowFirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<DroidconKe2023FlutterFlowFirebaseUser>(
          (user) {
            currentUser = DroidconKe2023FlutterFlowFirebaseUser(user);
            return currentUser!;
          },
        );
