import 'package:flutter/material.dart';
import 'package:ui_design/globals.dart';
import 'RadioButtonLists/image_radio_buttoms.dart';
import 'RadioButtonLists/simple_radio_buttoms.dart';

class radioButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        home: Scaffold(
          appBar: AppBar(
//            title: mediumText(text:"Radio Buttons"),
          title: mediumText(text: "Radio Buttons",),
            backgroundColor: appColor,
          ),
//          drawer: MyHomePage(),
          body: Container(
            padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child:ListView(
              children: <Widget>[
                ListTile(
                    title: lightText(text:'Simple RadioButton'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new simpleRadioBtn()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text:'Image Radio Button'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new imageRadioBtn()));
                    }),
              ],
            ),
          ),
//        )
    );
  }
}
