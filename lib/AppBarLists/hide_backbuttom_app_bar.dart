import 'package:flutter/material.dart';
import '../globals.dart';

class hideBackBtnAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new mediumText(text: "Hide backButton"),
          backgroundColor: appColor,
          leading: new Container(),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
              child: mediumText(
                text: "close",
              ),
            ),
          ],
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new mediumText(
            text: "Hide back Button in AppBar",
          ),
        ));
  }
}
