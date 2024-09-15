import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAvM07elFVtooM52utGp3GYLBdTwCme-kk",
            authDomain: "sharemyride-e356a.firebaseapp.com",
            projectId: "sharemyride-e356a",
            storageBucket: "sharemyride-e356a.appspot.com",
            messagingSenderId: "414671900620",
            appId: "1:414671900620:web:58f1cfd7d2a1cac4481769"));
  } else {
    await Firebase.initializeApp();
  }
}
