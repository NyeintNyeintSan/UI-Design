import 'package:flutter/material.dart';
import '../globals.dart';

class textAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new mediumText(text: "App Bar with Text"),
          backgroundColor: appColor,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () {},
              child: lightText(
                text: "Save",
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
          ],
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new mediumText(text: "AppBar with Text"),
        ));
  }
}
