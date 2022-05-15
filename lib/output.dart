import 'package:flutter/material.dart';

class output extends StatelessWidget {
  var words;
  output(this.words);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 199, 174, 101),
      child: Text(
        words,
        style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 76, 82, 3)),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 241, 243, 152),
          border: Border.all(width: 2, color: Color.fromARGB(255, 76, 82, 3)),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
