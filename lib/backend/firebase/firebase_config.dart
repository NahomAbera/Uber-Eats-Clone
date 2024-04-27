import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgJqYA9Kd_Rvsm2kDOLSzjgXxUKJJpD_I",
            authDomain: "uber-eats-clone-36892.firebaseapp.com",
            projectId: "uber-eats-clone-36892",
            storageBucket: "uber-eats-clone-36892.appspot.com",
            messagingSenderId: "10798388591",
            appId: "1:10798388591:web:17ee22846f221631e1c49a",
            measurementId: "G-Y7YW1Y2H2J"));
  } else {
    await Firebase.initializeApp();
  }
}
