import 'package:flutter/material.dart';
import '../globals.dart';

class imageRadioBtn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _imageRadioBtn();
  }
}

class _imageRadioBtn extends State<imageRadioBtn> {
  @override
  int _selected = 0;

// calling Function when Item
  void onChange(int value) {
    setState(() {
      _selected = value;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new mediumText(text: "Icon AppBar"),
        backgroundColor: appColor,
        leading: new Container(),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.close),
              onPressed: (){
                Navigator.of(context).pop();
              }
          )
        ],
      ),
      body: new Container(
        child: ListView(
//            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              new largeText(
                text: "  Following: ",
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              Column(children: <Widget>[
//=======================================================

                Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.only(left: 10, top: 20),
                    ),
                    new Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/images/natasha.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Natasha",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 0,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/diya.jpeg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Diya",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 1,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/prince.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Price",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 2,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/abhi.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Abhi",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 3,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),

//=======================================================
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/surali.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Surali",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 4,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
//=======================================================
                new Padding(
                  padding: new EdgeInsets.only(top: 20.0),
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
                          image: AssetImage("assets/images/flutter.png"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                        new BorderRadius.all(new Radius.circular(80.0)),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.only(left: 10),
                    ),
                    new Expanded(
                        child: new mediumText(
                          text: "Surat",
                        )),
                    Radio<int>(
                        activeColor: appColor,
                        value: 5,
                        groupValue: _selected,
                        onChanged: (int value) {
                          onChange(value);
                        }),
                  ],
                ),
              ]),
            ]),
      ),
    );
  }
}
