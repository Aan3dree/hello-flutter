import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';
import '../components/reuse_card.dart';
import '../constants.dart';
import '../components/bottom_buttom.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

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
                          'RESULT SUBTITLE',
                          style: kResultSubtitle,
                        ),
                        Text(
                          'XXX',
                          style: kResultValue,
                        ),
                        Text('Result Text'),
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
