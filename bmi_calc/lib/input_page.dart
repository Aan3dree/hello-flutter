import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';
import 'constants.dart';

bool cardIsActive = false;

enum EGender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveColor;
  Color femaleCardColor = kInactiveColor;
  EGender selectedGender = EGender.none;
  int height = 166;

  void updateColor(EGender gender) {
    setState(() {
      if (gender == EGender.male) {
        if (maleCardColor == kInactiveColor) {
          maleCardColor = kActiveColor;
          femaleCardColor = kInactiveColor;
        } else {
          maleCardColor = kInactiveColor;
        }
      } else if (gender == EGender.female) {
        if (femaleCardColor == kInactiveColor) {
          femaleCardColor = kActiveColor;
          maleCardColor = kInactiveColor;
        } else {
          femaleCardColor = kInactiveColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calc'),
        backgroundColor: kCustomBackgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('male clicked');
                      //updateColor(EGender.male);
                      setState(() {
                        selectedGender = EGender.male;
                      });
                    },
                    child: ReuseCard(
                      selectedGender == EGender.male
                          ? kActiveColor
                          : kInactiveColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('famale clicked');
                      //updateColor(EGender.female);
                      setState(() {
                        selectedGender = EGender.female;
                      });
                    },
                    child: ReuseCard(
                      selectedGender == EGender.female
                          ? kActiveColor
                          : kInactiveColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              kActiveColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kTextStyles,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyles,
                      ),
                      Text(
                        'cm',
                        style: kTextStyles,
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReuseCard(
                  kActiveColor,
                  IconContent(FontAwesomeIcons.mars, 'MALE'),
                )),
                Expanded(
                    child: ReuseCard(
                  kActiveColor,
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
