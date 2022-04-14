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
            child: Column(
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQH1328ONMc2eQ/profile-displayphoto-shrink_200_200/0/1626192148646?e=1655337600&v=beta&t=RZPt9QqH5kLk6DVxu9PziJwi6W8y13tS1T0lEtNZPDY'),
            ),
            Text(
              'André Souza',
              style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
        backgroundColor: Colors.teal,
      ),
    );
  }
}

Widget myLayout = Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        color: Colors.red,
        width: 100,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.yellow,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.yellow.withOpacity(0.5),
            height: 100,
            width: 100,
          )
        ],
      ),
      Container(
        color: Colors.blue,
        width: 100,
      )
    ]);
