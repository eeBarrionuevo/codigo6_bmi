import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({required this.height, required this.weight});

  //Calcular el BMI

  double bmiCalculator() {
    double bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  //Darme el resultado

  //Darme la recomendacion

  //Darme la imagen

}
