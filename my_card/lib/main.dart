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
                backgroundImage: AssetImage('images/euq.jpg')),
            Text(
              'André Souza',
              style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Square Peg'),
            ),
            Text(
              'SharePoint Analyst',
              style: TextStyle(
                  fontFamily: 'Fira Sans',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+55 81 979036346',
                    style: TextStyle(
                        fontFamily: 'Fira Sans',
                        fontSize: 18,
                        color: Colors.teal),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'an3dree@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Fira Sans',
                        fontSize: 18,
                        color: Colors.teal),
                  ),
                )),
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
