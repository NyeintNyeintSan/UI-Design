import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_design/RadioButtonLists/image_radio_buttoms.dart';
import 'package:ui_design/RadioButtonLists/simple_radio_buttoms.dart';
import 'package:ui_design/TextField/all_inputs.dart';
import 'package:ui_design/checkbox_lists.dart';
import 'package:ui_design/globals.dart';
import 'package:ui_design/radio_buttom_lists.dart';

class AllWidgets extends StatefulWidget {
  @override
  _AllWidgetsState createState() => _AllWidgetsState();
}

class _AllWidgetsState extends State<AllWidgets> {
  @override
  Widget build(BuildContext context) {
    var screenWidth=MediaQuery.of(context).size.width;
    var screenHeight=MediaQuery.of(context).size.height;
    return Scaffold(
//      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text("All Widgets"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:3.0,left: 4.0),
            width: screenWidth/1.03,
            height: screenHeight/8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.purple[100]
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight
              ),
              border: Border.all(color: Colors.purple[800],width: 2.0),
//                color: Colors.purple[300]
            ),
            child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("RadioButton",style: TextStyle(color: Colors.white,fontSize: 18),),
                Icon(Icons.adjust,color: Colors.white,)
              ],
            ),
              onPressed: (){
              showDialog(
                  context: context,
                builder: (context)=>AlertDialog(
                  title:mediumText(text: "Radio Buttons",),
                  content: lightText(text: "Click OK",),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed:(){
//                          Navigator.of(context).pop();
                          Navigator.of(context).pop();
                        Navigator.push(
                            context, 
                          new MaterialPageRoute(builder: (context)=>radioButtonList())
                        );

                        },
                        child: new mediumText(text: "OK",textColor: Colors.purple,))
                  ],
                )
              );
              },
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:3.0,left: 4.0),
            width: screenWidth/1.03,
            height: screenHeight/8,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red,width: 2.0),
                borderRadius: BorderRadius.circular(30),
                color: Colors.red[300]
            ),
            child: FlatButton(
//              child: Text("All"),
//              padding:new EdgeInsets.only(left: screenWidth/30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("CheckBox",style: TextStyle(color: Colors.white,fontSize: 18),),
                  Icon(Icons.crop_square,color: Colors.white,)
                ],
              ),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context)=>AlertDialog(
                      title:mediumText(text: "Check Boxes",),
                      content: lightText(text: "View check boxes?",),
                      actions: <Widget>[
                        new FlatButton(
                            onPressed:(){
                              Navigator.of(context).pop();
                            },
                            child: new mediumText(text: "Cancel",textColor: Colors.red,)),
                        new FlatButton(
                            onPressed:(){
                              Navigator.of(context).pop();
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(builder: (context)=>checkBoxList())
                              );
                            },
                            child: new mediumText(text: "OK",textColor: Colors.red,))
                      ],
                    )
                );
              },

            ),
          ),
          Container(
            margin: EdgeInsets.only(top:4.0,left: 4.0),
            width: screenWidth/1.03,
            height: screenHeight/8,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue,width: 2.0),
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20),
                    topRight: const Radius.circular(20),
                    bottomLeft: const Radius.circular(20),
                    bottomRight: const Radius.circular(20)
                ),
//                color: Colors.blue[300]
              gradient: LinearGradient(
                colors: [
                  Colors.blue[800],
                  Colors.blue[100],
                ],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
              ),
            ),
            child: FlatButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Input Type   ",style: TextStyle(color: Colors.white,fontSize: 18),),
                  Icon(Icons.art_track,color: Colors.white,)
                ],
              ),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context)=>AlertDialog(
                    title:mediumText(text:"Input Type"),
                    content: Row(
                      children: <Widget>[
                        Expanded(
                          child: new TextField(
                            decoration: new InputDecoration(
                              labelText: "Name",
                              hintText: "Austin Mahone"
                            ),
                          ),
                        )
                      ],
                    ),
                    actions: <Widget>[
                      new FlatButton(
                          onPressed:(){
                            Navigator.of(context).pop();
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=>AllInputWidgets()));
                          },
                          child: new mediumText(text: "OK")
                      )
                    ],
                  )
                );
              },
            ),
          ),
          Divider(
            color: Colors.orange,
            thickness: 3.0,
            height: 80.0,
          )
        ],
      ),
    );
  }
}