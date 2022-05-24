import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import '../components/reuse_card.dart';
import '../constants.dart';
import '../components/bottom_buttom.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key,
      required this.bmi,
      required this.interpretation,
      required this.category})
      : super(key: key);

  final String bmi;
  final String category;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kResultTitle),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReuseCard(
                  customColor: kActiveColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          category,
                          style: kResultSubtitle,
                        ),
                        Text(
                          bmi,
                          style: kResultValue,
                        ),
                        Text(
                          interpretation,
                        ),
                      ]),
                  onTap: () {}),
            ),
            BottomButton(
              buttonText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
