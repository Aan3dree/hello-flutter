import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.buttonText, required this.onTap})
      : super(key: key);

  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight.toDouble(),
        width: double.infinity,
        child: Center(
          child: Text(
            buttonText,
            style: kButtonText,
          ),
        ),
      ),
    );
  }
}
