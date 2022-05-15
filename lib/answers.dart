import 'package:flutter/material.dart';

import './output.dart';
import 'option.dart';

class answers extends StatelessWidget {
  //var qlist;
  List<Map<String, Object>> qlist;
  int nindex = 0;
  Function nanswer;
  answers(this.nindex, this.nanswer, this.qlist);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        output(
          qlist[nindex]["question"],
        ),
        ...(qlist[nindex]["answer"] as List<Map<String, Object>>).map((
          mopt,
        ) {
          //try to use key as well as objects
          return option(() => nanswer(mopt["score"]), mopt["text"]);
        }).toList() // Options
      ],
    );
  }
}
