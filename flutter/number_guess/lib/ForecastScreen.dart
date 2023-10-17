import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sayi_tahmin/ResultScreen.dart';

class ForecastScreen extends StatefulWidget {
  const ForecastScreen({super.key});

  @override
  State<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  var tfForecast = TextEditingController();
  int randomNumber = 0;
  int remainingRight = 5;
  String orientation = "";
  @override
  void initState() {
    super.initState();
    randomNumber = Random().nextInt(101);
    print("Random number : $randomNumber");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Prediction Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text2(remainingRight: remainingRight),
            Text3(orientation: orientation),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField1(tfForecast: tfForecast),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "Guess",
                  style: TextStyle(
                    color: Colors.yellow,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    remainingRight = remainingRight - 1;
                    if (remainingRight < 1) {
                     
                     Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  conclusion: false,
                                  number: randomNumber,
                                )));



                    }
                  });
                  int guess = int.parse(tfForecast.text);
                  if (guess == randomNumber) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  conclusion: true,
                                  number: randomNumber,
                                )));
                    return;
                  }
                  if (guess > randomNumber) {
                    setState(() {
                      orientation = "reduce estimate";
                    });
                  }
                  if (guess < randomNumber) {
                    setState(() {
                      orientation = "increase estimate";
                    });
                  }
                  if (remainingRight == 0) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  conclusion: false,
                                  number: randomNumber,
                                )));
                  }

                  tfForecast.clear();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  shadowColor: Colors.black,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextField1 extends StatelessWidget {
  const TextField1({
    super.key,
    required this.tfForecast,
  });

  final TextEditingController tfForecast;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tfForecast,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: "guess",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

class Text3 extends StatelessWidget {
  const Text3({
    super.key,
    required this.orientation,
  });

  final String orientation;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Help : $orientation",
      style: TextStyle(color: Colors.black54, fontSize: 24),
    );
  }
}

class Text2 extends StatelessWidget {
  const Text2({
    super.key,
    required this.remainingRight,
  });

  final int remainingRight;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Remaining Right : $remainingRight",
      style: TextStyle(color: Colors.pink, fontSize: 30),
    );
  }
}
