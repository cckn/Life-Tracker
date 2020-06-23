import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lifetracker/Data/Record.dart';

Widget buildRecordWidget(Record record) {
  final dateFormat = new DateFormat('a hh:mm');

  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text(
                dateFormat.format(record.time),
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
            Expanded(
              flex: 8,
              child: Text(
                record.text,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print("Icon Button");
                },
              ),
            )
          ],
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    ),
  );
}
