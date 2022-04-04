import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/sessions.dart';
import 'package:hello_flutter/screens/user_info_screen.dart';
import '../screens/user_info_screen.dart';
import '../screens/weather.dart';
import '../screens/bmi.dart';
import '../screens/intro.dart';
import '../screens/names.dart';
import '../utils/auth.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTiles = [
      'Home',
      'Profile',
      'StartUp Names',
      'BMI Calculator',
      'Weather',
      'Training'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.blueGrey),
      child: Text(
        'My App',
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    ));
    menuTiles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(
          element,
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          switch (element) {
            case 'Home':
              screen = IntroScreen();
              break;
            case 'Profile':
              screen = IntroScreen();
              break;
            case 'BMI Calculator':
              screen = BmiScreen();
              break;
            case 'StartUp Names':
              screen = RandomWords();
              break;
            case 'Weather':
              screen = WeatherScreen();
              break;
            case 'Training':
              screen = SessionsScreen();
              break;
          }
          Navigator.of(context).pop();

          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
