import 'package:flutter/material.dart';
import '../globals.dart';

class subTitleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            backgroundColor: appColor,
            title: Column(children: [
              mediumText(
                text: "Title",
              ),
              GestureDetector(
                child: Text('subtitle'),
                onTap: () {
                  print("tapped subtitle");
                },
              )
            ])
        ),
        body: new Container(
          alignment: Alignment.center,
          child: new mediumText(
            text: "Title and SubTitle in AppBar",
          ),
        ));
  }
}
