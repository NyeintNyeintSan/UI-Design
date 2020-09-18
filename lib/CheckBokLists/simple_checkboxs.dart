import 'package:flutter/material.dart';
import '../globals.dart';

class simpleCheckBoxs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _simpleCheckBoxs();
  }
}

class _simpleCheckBoxs extends State<simpleCheckBoxs> {
  @override
  //value of checkBoxes
  bool StudyVal = false;
  bool DanceVal = false;
  bool SingVal = false;
  bool TravellingVal = false;

  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: AppBar(
//        title: new mediumText(text: "Check Boxes"),
//        backgroundColor: appColor,
//      ),
      appBar: AppBar(
          backgroundColor: appColor,
          title: Column(children: [
            mediumText(
              text: "Subtitle AppBar",
            ),
            GestureDetector(
              child: Text('close'),
              onTap: () {
                Navigator.of(context).pop();
//                print("tapped subtitle");
              },
            )
          ])
      ),
      body: new Container(
        child: Column(children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(top: 30.0),
          ),
          largeText(
            text: "Hobby ",
          ),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Checkbox(
                      value: StudyVal,
                      activeColor: appColor,
                      onChanged: (bool val) {
                        setState(() {
                          StudyVal = val;
                        });
                      },
                    ),
                    lightText(text: "Study"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Checkbox(
                      value: DanceVal,
                      activeColor: appColor,
                      onChanged: (bool val) {
                        setState(() {
                          DanceVal = val;
                        });
                      },
                    ),
                    lightText(text: "Dance"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Checkbox(
                      value: SingVal,
                      activeColor: appColor,
                      onChanged: (bool val) {
                        setState(() {
                          SingVal = val;
                        });
                      },
                    ),
                    lightText(text: "Singing"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Checkbox(
                      value: TravellingVal,
                      activeColor: appColor,
                      onChanged: (bool val) {
                        setState(() {
                          TravellingVal = val;
                        });
                      },
                    ),
                    lightText(text: "Travelling"),
                  ],
                )
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
