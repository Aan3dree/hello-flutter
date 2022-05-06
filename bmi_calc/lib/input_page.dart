import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuse_card.dart';
import 'icon_content.dart';
import 'round_icon_button.dart';
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
  int weight = 66;
  int age = 26;

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

  void onAddTap() {}

  void onMinusTap() {
    print('minus tap');
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
                  child: ReuseCard(
                    onTap: () {
                      print('male clicked');
                      //updateColor(EGender.male);
                      setState(() {
                        selectedGender = EGender.male;
                      });
                    },
                    customColor: selectedGender == EGender.male
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: const IconContent(
                        cardIcon: FontAwesomeIcons.mars, cardText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onTap: () {
                      print('famale clicked');
                      //updateColor(EGender.female);
                      setState(() {
                        selectedGender = EGender.female;
                      });
                    },
                    customColor: selectedGender == EGender.female
                        ? kActiveColor
                        : kInactiveColor,
                    cardChild: const IconContent(
                        cardIcon: FontAwesomeIcons.venus, cardText: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              onTap: () {},
              customColor: kActiveColor,
              cardChild: Column(
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newHeight) {
                          setState(() {
                            height = newHeight.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    onTap: () {},
                    customColor: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT', style: kTextStyles),
                        Text(
                          weight.toString(),
                          style: kNumberStyles,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                print('minus');
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedIconButton(
                              icon: FontAwesomeIcons.plus,
                              onTap: () {
                                print('plus');
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    onTap: () {},
                    customColor: kActiveColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kTextStyles,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyles,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                                icon: FontAwesomeIcons.minus,
                                onTap: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTap: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: kBottomContainerHeight.toDouble(),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
