import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.green,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text("Dale men"),
          ),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
