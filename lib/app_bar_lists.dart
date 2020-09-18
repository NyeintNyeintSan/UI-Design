import 'package:flutter/material.dart';
import 'package:ui_design/globals.dart';
import 'AppBarLists/hide_backbuttom_app_bar.dart';
import 'AppBarLists/icon_appbar.dart';
import 'AppBarLists/search_app_bar.dart';
import 'AppBarLists/simple_app_bar.dart';
import 'AppBarLists/sub_title_app_bar.dart';
import 'AppBarLists/text_app_bar.dart';
import 'AppBarLists/transparent_app_bar.dart';
class appBarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: mediumText(text: "App Bars",),
            backgroundColor: appColor,
          ),
          body: Container(
            padding: new EdgeInsets.only(left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                ListTile(
                    title: lightText(text: 'Simple AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new simpleAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Icon Button With AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new iconAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Text AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new textAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Subtitle AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new subTitleAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Search AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new searchAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Transparent AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new transparentAppBar()));
                    }),
                new Divider(
                  color: Colors.grey[600],
                ),
                ListTile(
                    title: lightText(text: 'Hide Back Button AppBar'),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new hideBackBtnAppBar()));
                    }),
              ],
            ),
          ),
        ));
  }
}
