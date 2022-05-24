import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  const ReuseCard(
      {Key? key,
      required this.customColor,
      required this.cardChild,
      required this.onTap})
      : super(key: key);

  final Color customColor;
  final Widget cardChild;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
