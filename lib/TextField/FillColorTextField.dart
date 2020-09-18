import 'package:flutter/material.dart';


class AllInPutTypeShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        title: Text("UI Project"),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[

            Container(
                padding: EdgeInsets.all(5.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/all_inputs");
                  },
                  child: Text(
                    "Fill Color TextField ",
                    style:
                    TextStyle(fontFamily: "MyanmarSabae", fontSize: 20.0),
                  ),
                )),
            Container(
                padding: EdgeInsets.all(10.0),
                child: OutlineButton(
                  padding: EdgeInsets.all(20.0),
                  highlightedBorderColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/icons_text_fill");
                  },
                  child: Text(
                    "Icon Text Fields",
                    style:
                    TextStyle(fontFamily: "MyanmarSabae", fontSize: 20.0),
                  ),
                )),
           
          ],
        ),
      ),
    );
  }
}
