import 'package:flutter/material.dart';
import '../globals.dart';
//import '../view/my_home_page.dart';

class simpleAlert extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _simpleAlert();
  }
}
class _simpleAlert extends State<simpleAlert> {
  @override
  final userName = TextEditingController();

  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: new mediumText(text: "Alert Boxs"),
          backgroundColor: appColor,
        ),
//        drawer: (),
        body: new Container(
            alignment: Alignment.center,
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: appColor,
                      elevation: 20,
                      child: new mediumText(
                        text: "Click Me",
                        textColor: Colors.white,
                      ),
                      onPressed: () {
                        _simpleAlertBox(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget.");
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: appColor,
                      elevation: 20,
                      child: new mediumText(
                        text: "Ok & Cancel Alert",
                        textColor: Colors.white,
                      ),
                      onPressed: () {
                        _okCancelAlert(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget.");
                      },
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 250.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: appColor,
                      elevation: 20,
                      child: new mediumText(
                        text: "Alert with TextBox",
                        textColor: Colors.white,
                      ),
                      onPressed: () {
                        _textFieldAlertBox(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eget.");
                      },
                    ),
                  ),
                ])));
  }

// ================================== Simple AlertBox with ok button ======================================

  void _simpleAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(
            text: "Alert!",
          ),
          content: lightText(text: value),
          actions: <Widget>[
            new FlatButton(
              child: new mediumText(
                text: "Ok",
                textColor: appColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }

  // ================================== AlertBox with ok & cancel button ======================================

  void _okCancelAlert(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(text:"Alert!"),
          content: lightText(text:value),
          actions: <Widget>[
            Row(
              children: <Widget>[
                new FlatButton(
                    child: new mediumText(
                      text: "Cancel",
                      textColor: appColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
                new FlatButton(
                  child: new mediumText(
                    text: "Ok",
                    textColor: appColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        ));
  }

// ================================== AlertBox with TextField ======================================

  void _textFieldAlertBox(String value) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(text:"Alert!"),
          content: new Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: new TextField(
                  autofocus: true,
                  decoration: new InputDecoration(
                      labelText: 'Full Name', hintText: 'eg. John Smith'),
                ),
              )
            ],
          ),
          actions: <Widget>[
            new FlatButton(
                child: new mediumText(
                  text: "Cancel",
                  textColor: appColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            new FlatButton(
                child: new mediumText(
                  text: "Done",
                  textColor: appColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
