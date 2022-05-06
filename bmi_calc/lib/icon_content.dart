import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key? key, this.cardIcon = Icons.add, this.cardText = ""})
      : super(key: key);

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
          height: kBoxSize,
        ),
        Text(cardText, style: kTextStyles)
      ],
    );
  }
}
