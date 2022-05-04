import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color customColor;
  final Widget cardChild;
  ReuseCard(@required this.customColor, this.cardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: customColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
