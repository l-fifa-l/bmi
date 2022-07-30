import 'dart:math';

import 'main.dart';

class CalculateBMI {
  CalculateBMI({
    required this.weight,
    required this.height,
  });

  final int height;
  final int weight;

  late double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Over Weight";
    } else if (_bmi < 18.5) {
      return "Under Weight";
    } else {
      return "Normal";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Exercise more";
    } else if (_bmi < 18.5) {
      return "Eat more";
    } else {
      return "Fit, Kick Some ass";
    }
  }
}
