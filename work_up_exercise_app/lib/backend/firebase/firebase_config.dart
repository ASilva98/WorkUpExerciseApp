import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC6Mu7-r7X61XyfQHpOhfuJvktj7ODhNkY",
            authDomain: "work-up-exercise-app-mouqcn.firebaseapp.com",
            projectId: "work-up-exercise-app-mouqcn",
            storageBucket: "work-up-exercise-app-mouqcn.appspot.com",
            messagingSenderId: "837798912258",
            appId: "1:837798912258:web:5dae3db97f99be9eb7621b"));
  } else {
    await Firebase.initializeApp();
  }
}
