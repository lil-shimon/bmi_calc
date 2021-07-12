import 'dart:math';

import 'package:flutter/foundation.dart';

class CalculatorBrain {

    /// require int [height] int [weight]
    CalculatorBrain({@required this.height, @required this.weight});

    final int height;
    final int weight;

    /// public variable
    double _bmi;

    /// return [String]
    /// calculate bmi
    String calculateBMI () {
      _bmi = weight / pow(height / 100, 2);
      return _bmi.toStringAsFixed(1);
    }

    /// to access bmi in this method
    /// bmi must be public variable
    String getResult () {
      return (_bmi > 25) ? "Over weight"
          : (_bmi > 18.5) ? "Normal"
          : "Under weight";
    }

    /// return [String]
    /// get description for result page
    /// by the result of bmi calc
    String getInterpretation () {
      return (_bmi >= 25.0) ? "You have a higher than normal body weight. Try to exercise more"
          : (_bmi > 18.5) ? "You have a normal body weight. Good job!"
          : "You have a lower than normal body weight. You can eat a bit more.";
    }
}
