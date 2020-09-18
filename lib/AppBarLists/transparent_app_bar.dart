import 'package:flutter/material.dart';
import '../globals.dart';

class transparentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: new mediumText(text: "Transparent AppBar"),
          backgroundColor: Colors.transparent,
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new mediumText(
            text: "Transparent AppBar",
          ),
        ));
  }
}
