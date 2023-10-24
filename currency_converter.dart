import 'dart:io';

void main() {
  Testing test = Testing();
}

class Testing {
  double? _convertRatio1, _convertRatio2, _amount, result;
  int _i = 0;
  Testing() {
    testTheInput();
  }

  void testTheInput() {
    _i = 0;
    while (_i == 0) {
      try {
        print(
            "Enter the standard value you want to change into another value[1]:");
        _convertRatio1 = double.parse(stdin.readLineSync()!);
        print(
            "Enter the another standard value what is converted by the currency converter app[2]:");
        _convertRatio2 = double.parse(stdin.readLineSync()!);
        print("Enter the amount you want to convert[3]:");
        _amount = double.parse(stdin.readLineSync()!);
        if (_convertRatio1 != 0 && _convertRatio2 != 0 && _amount != 0) {
          _i = 1;
        } else {
          print("I think you entered '0' in one of them,\nPlease try again...");
        }
      } on FormatException {
        print(
            "Error!!\nYou enter something that is not an integer in one of them,\nPlease try again...");
      }
    }
    _calculate();
  }

  void _calculate() {
    print("If $_convertRatio1 is $_convertRatio2");
    print("So what  $_amount == ?");
    result = (_amount! / _convertRatio1!) * _convertRatio2!;
    print("If you want to convert $_amount, you need $result");
  }
}
