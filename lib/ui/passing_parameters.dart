import 'package:flutter/material.dart';

class PassingParameters extends StatefulWidget {
  final int id;
  PassingParameters({
    @required this.id
  });
  @override
  _PassingParametersState createState() => _PassingParametersState();
}

class _PassingParametersState extends State<PassingParameters> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  String _errorMessage = "";

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    _textController.addListener(() {
      print(_textController.text);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: Column(

                children: <Widget>[
                  TextFormField(
                    controller: _textController,
                    validator: (value) {
                      if(value.isEmpty) {
                        return "You need to add something";
                      }
                      return null;
                    },
                  ),
                  Visibility(
                    visible: _errorMessage == ""? false : true,
                    child: Text("$_errorMessage"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  FlatButton.icon(
                      onPressed: () {
                        if(_formKey.currentState.validate()) {
                          setState(() {
                            _errorMessage = "Hello Testing";
                          });
                        }
                      },
                      icon: Icon(Icons.add),
                      label: Text("Submit")
                  )
                ],
              ),
            )
        )
    );
  }
}