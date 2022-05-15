import 'package:flutter/material.dart';

class option extends StatelessWidget {
  var wording;
  Function handled;
  option(this.handled, this.wording);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.amberAccent, onPrimary: Colors.black),
          onPressed: () => handled(),
          child: Text(wording),
        ));
  }
}
