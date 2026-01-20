import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: dotenv.env['google_API_key'] ?? '',
            authDomain: "flutterflowstarter.firebaseapp.com",
            projectId: "flutterflowstarter",
            storageBucket: "flutterflowstarter.appspot.com",
            messagingSenderId: "851397253901",
            appId: "1:851397253901:web:1fa0bd9d4d6a214d30ae44"));
  } else {
    await Firebase.initializeApp();
  }
}
