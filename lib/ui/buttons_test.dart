import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_design/globals.dart';

class ButtonsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    var screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("All are buttons"),
        ),
        body:Column(
          children: <Widget>[
            Image.asset("assets/images/abhi.jpg"),
          Container(
            width:100.0,
            height:100.0,
//            color: Colors.blue,
//            child:Image(
//
////                fit:BoxFit.cover,
//                image:AssetImage("assets/images/abhi.jpg")
//            ),
          ),
            Container(
              margin: EdgeInsets.only(left: 20.0,top: 10.0),
              width: screenWidth/1.2,
              height: screenHeight/12,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red,width: 2.0),
                borderRadius: BorderRadius.circular(30),
              ),
              child: FlatButton(
                child: Text("Border"),
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context)=>AlertDialog(
                        title: mediumText(text: "Border",),
//              content: lightText(text: "This is border.",),
                        content: Row(
                          children: <Widget>[
//                            lightText(text: "This is border.",),
                            Expanded(
//                              flex:1,
                              child: new TextField(
                                decoration: new InputDecoration(
                                    labelText: "Name",hintText: "Nyeint Nyeint San"
                                ),
                              ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          new FlatButton(
                              onPressed:(){
                                Navigator.of(context).pop();
                              },
                              child: new mediumText(text: "Cancel",textColor: Colors.blue,)
                          ),
                          new FlatButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: new mediumText(text: "Ok",textColor: Colors.blue,)
                          ),
                        ],
                      )
                  );
                },
              ),
            ),
//          _buildContainer(screenWidth:screenWidth/1.2, screenHeight:screenHeight/12,color: Colors.white,radius:0,caption:"Border"),
            _buildContainer(screenWidth:screenWidth/1.2, screenHeight:screenHeight/12,color: Colors.white,radius:30,caption:"Rounded Border"),
            _buildContainer(screenWidth:screenWidth/1.2, screenHeight:screenHeight/12,color: Colors.pink[50],radius:0,caption:"Filled Color Button"),
            _buildContainer(screenWidth:screenWidth/1.2, screenHeight:screenHeight/12,color: Colors.teal[100],radius:30,caption:"Filled Color Round Button"),
            _buildContainer(screenWidth:screenWidth/1.2, screenHeight:screenHeight/85,color: Colors.red,radius:0,caption:"")
          ],
        )

    );
  }

  Container _buildContainer({double screenWidth, double screenHeight,Color color,double radius,var caption}) {
    return Container(
      margin: EdgeInsets.only(left: 20.0,top: 10.0),
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red,width: 2.0),
          borderRadius: BorderRadius.circular(radius),
          color: color
      ),
      child: FlatButton(
        child: Text(caption),
        onPressed: (){},
      ),
    );
  }
}
