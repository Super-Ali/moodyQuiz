import 'package:flutter/material.dart';
import './dbb.dart';
import './result.dart';
import './answers.dart';

// void main() {
//  runApp(MyApp());}
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  int totalscore = 0;
  void answer(int score) {
    totalscore += score;
    setState(() {
      index++;
    });
    print("Button Pressed");
  }

  void restart() {
    totalscore = 0;
    setState(() {
      index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.amberAccent,
              titleTextStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              title: Text("Moody Pop Quiz"),
            ),
            body: index <= index.bitLength + 3
                ? answers(index, answer, qList)
                : result(restart, totalscore)));
  }
}
