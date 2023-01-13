import 'dart:math';

class BMIBrain {
  double height;
  double weight;

  BMIBrain({required this.height, required this.weight});

  double bmi = 0;

  double bmiCalculator() {
    bmi = weight / pow((height / 100), 2);
    return bmi;
  }

  String getResult() {
    // if (bmi < 18) {
    //   return "Bajo peso";
    // } else if (bmi < 25) {
    //   return "Normal";
    // } else {
    //   return "Sobrepeso";
    // }
    String result = "";
    if (bmi < 18) {
      result = "Bajo peso";
    } else if (bmi < 25) {
      result = "Normal";
    } else {
      result = "Sobrepeso";
    }

    return result;
  }

  String getRecommendation() {
    String recommendation = "";
    if (bmi < 18) {
      recommendation = "Debes de comer un poco más y hacer ejercicio";
    } else if (bmi < 25) {
      recommendation = "Todo va bien, pero no te descuides";
    } else {
      recommendation = "Debes de comer más saludable y hacer ejercicio";
    }

    return recommendation;
  }

  String getImage() {
    String image = "image1";
    if (bmi < 18) {
      image = "image1";
    } else if (bmi < 25) {
      image = "image2";
    } else {
      image = "image3";
    }

    return image;
  }
}
