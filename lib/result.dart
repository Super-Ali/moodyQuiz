import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import './dbb.dart';

class result extends StatelessWidget {
  Function futon;
  var scr;
  result(this.futon, this.scr);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
      child: Center(
        child: Column(
          children: [
            Text(
              "Your Score is ${scr.toString()} Please Dont be mad , The Scoring Scheme is Absurd",
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 76, 82, 3)),
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () => futon(),
                child: Text("Restart Quiz",
                    style: TextStyle(color: Colors.black38)))
          ],
        ),
      ),
    );
  }
}
