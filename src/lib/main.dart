import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:hello_flutter/screens/bmi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hello_flutter/screens/logi.dart';
import 'firebase_options.dart';
import '../screens/intro.dart';
import '../screens/names.dart';
import '../shared/drawer.dart';

void main() {
  /** 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth auth = FirebaseAuth.instance;
*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
      routes: {
        '/home': (context) => SignInScreen(),
        '/bmi': (context) => BmiScreen()
      },
      initialRoute: '/home',
      home: SignInScreen(),
    );
  }
}
