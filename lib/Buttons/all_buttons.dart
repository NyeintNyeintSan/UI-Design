import 'package:flutter/material.dart';

//import '../utils/globals.dart';

class AllButtonWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Buttons လေးတွေပါခင်ဗျာ Buttons လေးတွေပါခင်ဗျာ Buttons လေးတွေပါခင်ဗျာ Buttons လေးတွေပါခင်ဗျာ",
          style: TextStyle(fontFamily: "MyanmarSabae"),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 2.0),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Border"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Rounded Border"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.pink[50],
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Filled Color Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.indigo[50],
            ),
            child: FlatButton(
              onPressed: () {},
              child: Text("Filled Color Round Button"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[800],
                  Colors.blue[100],
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.pink, width: 2.0),
              color: Colors.indigo[50],
            ),
//            child: FlatButton(
//              onPressed: () {},
//              child: LargerText(
//                textName: "Gradient Color Round Button",
//                textColors: Colors.white,
//              ),
//            ),
          ),
        ],
      ),
    );
  }
}
