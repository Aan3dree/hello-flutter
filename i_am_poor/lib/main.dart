import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('I am Poor'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/coal.png'),
        ),
      ),
    ),
  ));
}
