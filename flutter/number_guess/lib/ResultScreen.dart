import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  late bool conclusion;
  late int number;
  ResultScreen({required this.conclusion,required this.number});
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.conclusion
                ? Image.asset("images/mutlu.png")
                : Image.asset("images/uzgun.jpeg"),
            Text4(widget: widget),
            Text("predicted number : ${widget.number}"),
            SizedBox(
              width: 200,
              height: 50,
              child: Button2(),
            ),
          ],
        ),
      ),
    );
  }
}

class Button2 extends StatelessWidget {
  const Button2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "try again",
        style: TextStyle(
          color: Colors.yellow,
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
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

class Text4 extends StatelessWidget {
  const Text4({
    super.key,
    required this.widget,
  });

  final ResultScreen widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.conclusion ? "you won " : "you lost",
      style: TextStyle(color: Colors.black54, fontSize: 36),
    );
  }
}
