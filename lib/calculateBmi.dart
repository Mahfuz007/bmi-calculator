import 'dart:math';

class CalculateBmi {
  late double _bmi;
  late final int _height;
  late final int _weight;
  late int _age;

  CalculateBmi(this._height, this._weight, this._age);

  getCalculatedBMI() {
    _bmi =  (_weight/pow((_height/100), 2));
    return _bmi;
  }

  getResultTitle() {
    if(_bmi >= 18.5 && _bmi <=25.0) {
      return "NORMAL";
    } else if(_bmi>25.0) {
      return "OVERWEIGHT";
    }
    return "UNDERWEIGHT";
  }

  getResultMessage() {
    if(_bmi >= 18.5 && _bmi <=25.0) {
      return "You have a normal body weight.Good Job!";
    } else if(_bmi>25.0) {
      return "You need to loose your weights";
    }
    return "You need to eat more!!!";
  }
}