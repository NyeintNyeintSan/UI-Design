import 'package:flutter/material.dart';

class IconTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All Inputs"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                style: TextStyle(fontFamily: "MyanmarSabae"),
                decoration: InputDecoration(
                  icon: Icon(Icons.text_fields),
                    hintText: "မြန်မာလိုရေးကြည့်တာပါ"
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Hello World",
                  hintText: "Place Holder",
                  icon: Icon(Icons.textsms),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

}