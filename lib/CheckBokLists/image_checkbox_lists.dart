import 'package:flutter/material.dart';
import '../globals.dart';

class imageCheckBoxs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _imageCheckBoxs();
  }
}

class _imageCheckBoxs extends State<imageCheckBoxs> {
  // Checked value for CheckBoxes
  bool DanceVal = true;
  bool SingVal = false;
  bool ReadVal = false;
  bool StudyVal = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Transparent AppBar"),
        backgroundColor: Colors.transparent,
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
                //================================== Dance CheckBox ==================================
                new Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/images/dance.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: lightText(
                          text: "Dance",
                        )),
                    new Checkbox(
                      value: DanceVal,
                      activeColor: appColor,
                      onChanged: (val) {
                        setState(() {
                          DanceVal = val;
                        });
                      },
                    ),
                  ],
                ),

                //================================== Singing CheckBox ==================================
                new Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/images/sing.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: lightText(
                          text: "Singing",
                        )),
                    new Checkbox(
                      value: SingVal,
                      activeColor: appColor,
                      onChanged: (val) {
                        setState(() {
                          SingVal = val;
                        });
                      },
                    ),
                  ],
                ),

                //================================== Reading CheckBox ==================================

                new Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/images/reading.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: lightText(
                          text: "Reading",
                        )),
                    new Checkbox(
                      value: ReadVal,
                      activeColor: appColor,
                      onChanged: (val) {
                        setState(() {
                          ReadVal = val;
                        });
                      },
                    ),
                  ],
                ),
                //================================== Study CheckBox ==================================
                new Padding(
                  padding: new EdgeInsets.only(top: 30),
                ),
                Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/images/study.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: lightText(
                          text: "Study",
                        )),
                    new Checkbox(
                      value: StudyVal,
                      activeColor: appColor,
                      onChanged: (val) {
                        setState(() {
                          StudyVal = val;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ])
        ]),
      ),
    );
  }
}
