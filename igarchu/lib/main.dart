import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;
import 'package:flutter/material.dart';
import 'package:igarchu/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (defaultTargetPlatform == TargetPlatform.iOS) {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // } else {
  //   await Firebase.initializeApp();
  // }
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC3btgCXS4Jq9P0LS9uwGyPq6mKJrYFrSE',
      appId: "1:330930111207:android:62896c58ceb89282889842",
      messagingSenderId: "330930111207",
      projectId: "igarchu-ver2",
      authDomain: "igarchu-ver2.firebaseapp.com",
      storageBucket: "igarchu-ver2.appspot.com",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      debugShowCheckedModeBanner: false,
    );
  }
}
