import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC52K38fi9g0aNphMXzD7IcWQYy2s3i6Yg",
            authDomain: "appandroidios-38136.firebaseapp.com",
            projectId: "appandroidios-38136",
            storageBucket: "appandroidios-38136.appspot.com",
            messagingSenderId: "129774508111",
            appId: "1:129774508111:web:0229d22f515448008cb23a",
            measurementId: "G-4X5SP0YHWT"));
  } else {
    await Firebase.initializeApp();
  }
}
