import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final double height;
  final double weight;
  late double _bmi;
  CalculatorBrain({required this.height, required this.weight});

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String category() {
    if (_bmi < 18.5) {
      return 'Underweight'.toUpperCase();
    } else if (_bmi >= 25) {
      return 'Overweigth'.toUpperCase();
    } else {
      return 'Normal'.toUpperCase();
    }
  }

  String interpretation() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weigth. Try to exercise more.';
    } else {
      return 'You have a normal body weight. Good job!';
    }
  }
}
