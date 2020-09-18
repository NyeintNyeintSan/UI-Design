import 'package:flutter/material.dart';
import '../globals.dart';

class iconAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            title: new mediumText(text:"App Bar with icon"),
            backgroundColor: appColor,
            actions: [
              new IconButton(
                icon: new Icon(Icons.add_alert),
                color: Colors.white,
                onPressed: () {},
              ),
              new IconButton(
                icon: new Icon(Icons.close),
                color: Colors.white,
                onPressed: () {},
              )
            ]),
        body: new Container(alignment: Alignment.center,
          child: new mediumText(text:"AppBar with Icon"),
        ));
  }
}
