import 'package:flutter/material.dart';
import 'package:ui_design/globals.dart';
import 'CheckBokLists/image_checkbox_lists.dart';
import 'CheckBokLists/lists_checkboxs.dart';
import 'CheckBokLists/simple_checkboxs.dart';
class checkBoxList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//        home: Scaffold(
      return Scaffold(
          appBar: AppBar(
          title: mediumText(text: "Check Boxes",),
            backgroundColor: appColor,
          ),
          body: Container(
            padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child:ListView(
              children: <Widget>[
                ListTile(
                    title: lightText(text:'Simple CheckBox'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new simpleCheckBoxs()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title:lightText(text:'Image with CheckBox'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new imageCheckBoxs()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text:'List of CheckBox'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new listCheckBox()));
                    }),
              ],
            ),
          ),
//        )
    );
  }
}