import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150.0;
  double weight = 60.0;
  double bmi = 0;
  String result = "x";
  String recommendation = "-";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bienvenido",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontSize: 22.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Por favor selecciona los parámetros correspondientes.",
                style: TextStyle(
                  fontFamily: "Noto Sans",
                  fontSize: 16.0,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),

              const Center(
                child: Text(
                  "Altura",
                  style: TextStyle(
                    fontFamily: "Noto Sans",
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    height.toInt().toString(),
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " cm",
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // Text(height.toStringAsFixed(0)),
              // Text("$height"),
              // Text("${height}"),
              Slider(
                value: height,
                min: 50,
                max: 220,
                onChanged: (double value) {
                  height = value;
                  setState(() {});
                },
              ),

              const SizedBox(
                height: 16.0,
              ),

              const Center(
                child: Text(
                  "Peso",
                  style: TextStyle(
                    fontFamily: "Noto Sans",
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    weight.toInt().toString(),
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    " kg",
                    style: TextStyle(
                      fontFamily: "Noto Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              // Text(height.toStringAsFixed(0)),
              // Text("$height"),
              // Text("${height}"),
              Slider(
                value: weight,
                min: 30,
                max: 200,
                onChanged: (double value) {
                  weight = value;
                  setState(() {});
                },
              ),

              const SizedBox(
                height: 16.0,
              ),

              SizedBox(
                height: 50.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    bmi = weight / pow((height / 100), 2);
                    if (bmi < 18) {
                      result = "Bajo peso";
                      recommendation =
                          "Debes de comer un poco más y hacer más ejercicio";
                    } else if (bmi < 25) {
                      result = "Normal";
                      recommendation =
                          "Todo está bien, pero no olvides hacer ejercicio";
                    } else {
                      result = "Sobrepeso";
                      recommendation =
                          "Debes de comer más sano y hacer más ejercicio";
                    }
                    setState(() {});
                  },
                  child: Text(
                    "Calcular",
                  ),
                ),
              ),

              const SizedBox(
                height: 16.0,
              ),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Resultado:",
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            bmi.toStringAsFixed(1),
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 36.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff06d6a0),
                            ),
                          ),
                          Text(
                            result,
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff06d6a0),
                            ),
                          ),
                          Text(
                            "Recomendación:",
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 14.0,
                            ),
                          ),
                          Text(
                            recommendation,
                            style: TextStyle(
                              fontFamily: "Noto Sans",
                              fontSize: 16.0,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/image2.png",
                        height: 160.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
