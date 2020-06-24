import 'package:flutter/material.dart';
import 'package:lifetracker/Data/dummy.dart';
import 'package:lifetracker/Screens/Home/RecordTile.dart';
import 'package:lifetracker/Screens/Home/TextInputForm.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _records = dummy;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: _records.map((record) {
              return RecordTile(record: record);
            }).toList(),
          ),
        ),
        TextInputForm(),
      ],
    );
  }
}
