import 'package:flutter/material.dart';

const textStyles = TextStyle(color: Color(0xFF8D8E98), fontSize: 18);
const boxSize = 15.0;

class IconContent extends StatelessWidget {
  IconContent(this.cardIcon, this.cardText);

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80,
        ),
        SizedBox(
          height: boxSize,
        ),
        Text(cardText, style: textStyles)
      ],
    );
  }
}
