import 'package:flutter/material.dart';
import '../shared/drawer.dart';
import '../shared/bottom.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      bottomNavigationBar: BottomMenu(),
      drawer: MenuDrawer(),
      body: Center(child: FlutterLogo()),
    );
  }
}
