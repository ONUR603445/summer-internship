
import 'package:flutter/material.dart';
import 'package:sayi_tahmin/ForecastScreen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text1(),
            Image.asset("images/zar.jpeg"),
            SizedBox(
              width: 200,
              height: 50,
              child: Button1(),
            ),
          ],
        ),
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "GAME START",
        style: TextStyle(
          color: Colors.yellow,
        ),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ForecastScreen()));
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
    );
  }
}

class Text1 extends StatelessWidget {
  const Text1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Guessing Game",
      style: TextStyle(color: Colors.black54, fontSize: 36),
    );
  }
}