import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class ThirdParty extends StatefulWidget {
  @override
  _ThirdPartyState createState() => _ThirdPartyState();
}

class _ThirdPartyState extends State<ThirdParty> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Builder"),
      ),
      body: FormBuilder(
        key: _fbKey,
        autovalidate: true,
        child: Column(
          children: <Widget>[
            FormBuilderDateTimePicker(
              attribute: "date",
              onChanged: (value) {
                print(value);
              },
              inputType: InputType.date,
              format: DateFormat("yyyy-MM-dd"),
              decoration:
              InputDecoration(labelText: "Appointment Time"),
              readOnly: false,
            ),
          ],
        ),
      ),
    );
  }
}