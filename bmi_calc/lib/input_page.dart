import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80;
const customBackgroundColor = Color(0xFF0F1332);
const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomContainerCOlor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;

  void updateColor(int gender) {
    setState(() {
      if (gender == 1) {
        if (maleCardColor == inactiveColor) {
          maleCardColor = activeColor;
          femaleCardColor = inactiveColor;
        } else {
          maleCardColor = inactiveColor;
        }
      } else if (gender == 2) {
        if (femaleCardColor == inactiveColor) {
          femaleCardColor = activeColor;
          maleCardColor = inactiveColor;
        } else {
          femaleCardColor = inactiveColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calc'),
        backgroundColor: customBackgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male clicked');
                      updateColor(1);
                    },
                    child: ReuseCard(
                      maleCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('famale clicked');
                      updateColor(2);
                    },
                    child: ReuseCard(
                      femaleCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FAMELA'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              activeColor,
              Row(
                children: [
                  Icon(Icons.man),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReuseCard(
                  activeColor,
                  IconContent(FontAwesomeIcons.mars, 'MALE'),
                )),
                Expanded(
                    child: ReuseCard(
                  activeColor,
                  IconContent(FontAwesomeIcons.mars, 'MALE'),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
