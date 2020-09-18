//import 'package:ui_design/AppBarLists/hide_backbuttom_app_bar.dart';
//import 'package:ui_design/AppBarLists/icon_appbar.dart';
//import 'package:ui_design/AppBarLists/search_app_bar.dart';
//import 'package:ui_design/AppBarLists/sub_title_app_bar.dart';
//import 'package:ui_design/Buttons/all_buttons.dart';
//import 'package:ui_design/TextField/FillColorTextField.dart';
//import 'package:ui_design/TextField/all_inputs.dart';
//import 'package:ui_design/all_widgets.dart';
//import 'package:ui_design/checkbox_lists.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'package:ui_design/local/app_db.dart';
import 'package:ui_design/local/dao/student_dao.dart';
import 'package:flutter/material.dart';
import 'globals.dart';
//import 'package:ui_design/local/model/student_table.dart';
//import 'package:ui_design/local/model/student_with_course.dart';
//import 'package:ui_design/local/dao/student_dao.dart';

//void main() {
//  runApp(MyApp());
//}
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//    return MaterialApp(
//      theme: ThemeData(
//        primaryColor: Colors.blue,
//      ),
//      home: AllWidgets(),
//    );
//  }
//}

void main() {
  Stetho.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appDb = AppDb();
  var _readStudents;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Database"),
        ),
        body: Column(
//          child: Text("$_readStudents"),
        children: <Widget>[
          FloatingActionButton(
            onPressed: () async {
              final author = Author(
                  name: "Aung Aung"
              );
              await appDb.insertAuthor(author);
              List<Author> authors = await appDb.getAllAuthors();
              print(authors.toString());

              Scaffold.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: appColor,
                  content: lightText(text: authors.toString()),
                  duration: Duration(seconds: 1),
                ),
              );

            },
            child: Icon(Icons.watch),
          ),
          FloatingActionButton(
            onPressed: () async {
              final category = Categorie(
                  name: "Comedy"
              );
              await appDb.insertCategorie(category);
              List<Categorie> categories = await appDb.getAllCategories();
              print(categories.toString());

              Scaffold.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: appColor,
                  content: lightText(text: categories.toString()),
                  duration: Duration(seconds: 1),
                ),
              );

            },
            child: Icon(Icons.map),
          ),
          FloatingActionButton(
            onPressed: () async {
              final user = User(
                  name: "Ei Theign",
                address: "Mu Done"
              );
              await appDb.insertUser(user);
              List<User> users = await appDb.getAllUsers();
              print(users.toString());

              Scaffold.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: appColor,
                  content: lightText(text: users.toString()),
                  duration: Duration(seconds: 1),
                ),
              );

            },
            child: Icon(Icons.category),
          ),
        ],
        ),


      ),
    );
  }
}