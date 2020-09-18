import 'package:flutter/material.dart';
import '../globals.dart';

class simpleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new mediumText(text:"App Bar"),
          backgroundColor: appColor,
        ),
        body: new Container(alignment: Alignment.center,
          child: new mediumText(text:"Simple AppBar",),
        ));
  }
}
