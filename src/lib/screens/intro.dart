import 'package:flutter/material.dart';
import '../shared/drawer.dart';
import '../shared/bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home?')),
      bottomNavigationBar: BottomMenu(),
      drawer: MenuDrawer(),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/universe.jfif'),
          fit: BoxFit.cover,
        )),
        child: Center(
            child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white60,
          ),
          child: Text(
              'Hello World men, telinha introdutória para alguns exercicios',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.black, shadows: [
                Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 2.0,
                    color: Colors.greenAccent)
              ])),
        )),
      ),
    );
  }
}
