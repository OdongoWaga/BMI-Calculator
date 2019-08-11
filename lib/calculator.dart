import 'dart:math';

class Calculator {
  Calculator({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Chunky';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Beanpole';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Hit the gym';
    } else if (_bmi > 18.5) {
      return 'You are fine';
    } else {
      return 'Eat a sammich';
    }
  }
}
