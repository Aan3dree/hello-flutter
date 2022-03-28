import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:hello_flutter/screens/bmi.dart';
import '../screens/intro.dart';
import '../screens/names.dart';
import '../shared/drawer.dart';

void main() {
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
        '/home': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen()
      },
      initialRoute: '/home',
      //home: IntroScreen(),
    );
  }
}
