import 'package:flutter/material.dart';
import 'package:ui_design/globals.dart';
//import '../../globals.dart';

class simpleRadioBtn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _simpleRadioBtn();
  }
}

class _simpleRadioBtn extends State<simpleRadioBtn> {
  @override
  int value;
  int _selected = 2;

  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      return new Scaffold(
          appBar: AppBar(
//            title: new mediumText(text: "Radio Buttons"),
          title: new mediumText(text: "Radio Buttons"),
            backgroundColor: appColor,
          ),
          body: Builder(
            builder: (context) => new Container(
              child: Column(children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                new largeText(
                  text: "City: ",
                ),
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 0,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Surat",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 1,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Bombay",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 2,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Baroda",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 3,
                          groupValue: _selected,
                          onChanged: (int value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Ahemdabad",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 4,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Bardoli",
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<int>(
                          activeColor: appColor,
                          value: 5,
                          groupValue: _selected,
                          onChanged: (value) {
                            _select(value, context);
                          }),
                      new mediumText(
                        text: "Anand",
                      ),
                    ],
                  ),
                ])
              ]),
            ),
          ));
    });
  }

// calling when Item Selected
  void _select(int value, BuildContext context) {
    setState(() {
      _selected = value;
    });
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: appColor,
        content: lightText(text: "Selected"),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
